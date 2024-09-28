import 'dart:convert';
import 'dart:isolate';
import 'package:flipper_models/CloudSync.dart';
import 'package:flipper_models/Subcriptions.dart';
import 'package:flipper_models/helperModels/ICustomer.dart';
import 'package:flipper_models/helperModels/IStock.dart';
import 'package:flipper_models/helperModels/IVariant.dart';
import 'package:flipper_models/helperModels/UniversalProduct.dart';
import 'package:flipper_models/helperModels/random.dart';
import 'package:flipper_models/realmModels.dart';
import 'package:flipper_models/realm_model_export.dart';
import 'package:flipper_models/rw_tax.dart';
import 'package:flipper_models/secrets.dart';
import 'package:flipper_models/view_models/mixins/riverpod_states.dart';
import 'package:flipper_services/constants.dart';
import 'firebase_options.dart';
import 'package:http/http.dart' as http;
import 'package:realm/realm.dart';
import 'dart:collection';
import 'package:flutter/services.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class IsolateHandler with Subscriptions {
  static Realm? realm;
  static Realm? localRealm;

  static Future<void> cloudDownload(List<dynamic> args) async {
    final rootIsolateToken = args[0] as RootIsolateToken;
    final sendPort = args[1] as SendPort;
    String? dbPatch = args[3] as String?;
    String? key = args[4] as String?;
    String? local = args[9] as String?;

    if (dbPatch == null || key == null) return;
    BackgroundIsolateBinaryMessenger.ensureInitialized(rootIsolateToken);
    try {
      LocalConfiguration configLocal = localConfig(key.toIntList(), local!);
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      /// re-init firestore
      final firestore = FirebaseFirestore.instance;
      localRealm?.close();
      localRealm = Realm(configLocal);
      CloudSync(firestore, localRealm!).handleRealmChanges<Stock>(
        syncProvider: "FIRESTORE",
        results: localRealm!.all<Stock>(),
        tableName: 'stocks',
        idField: 'stock_id',
        getId: (stock) => stock.id!,
        convertToMap: (stock) =>
            stock.toEJson(includeVariant: false).toFlipperJson(),
        preProcessMap: (map) {
          map.remove('variant');
          map['stock_id'] = map['id'];
          map.remove('id');
          map.remove('_id');
        },
      );

      CloudSync(firestore, localRealm!).handleRealmChanges<Product>(
        syncProvider: "FIRESTORE",
        results: localRealm!.all<Product>(),
        tableName: 'products',
        idField: 'product_id',
        getId: (product) => product.id!,
        convertToMap: (product) => product.toEJson().toFlipperJson(),
        preProcessMap: (map) {
          map.remove('composites');
          map['product_id'] = map['id'];
          map.remove('id');
          map.remove('_id');
        },
      );

      CloudSync(firestore, localRealm!).handleRealmChanges<Variant>(
        syncProvider: "FIRESTORE",
        results: localRealm!.all<Variant>(),
        tableName: 'variants',
        idField: 'variant_id',
        getId: (variant) => variant.id!,
        convertToMap: (variant) => variant.toEJson().toFlipperJson(),
        preProcessMap: (map) {
          map['variant_id'] = map['id'];
          map.remove('id');
          map.remove('_id');
        },
      );

      CloudSync(firestore, localRealm!).handleRealmChanges<Counter>(
        syncProvider: "FIRESTORE",
        results: localRealm!.all<Counter>(),
        tableName: 'counters',
        idField: 'counter_id',
        getId: (counter) => counter.id!,
        convertToMap: (counter) => counter.toEJson().toFlipperJson(),
        preProcessMap: (map) {
          map['counter_id'] = map['id'];
          map.remove('id');
          map.remove('_id');
        },
      );
      sendPort.send(1);
    } catch (e) {
      talker.error(e);
    }
  }

  static Future<void> cloudUpload(List<dynamic> args) async {
    final rootIsolateToken = args[0] as RootIsolateToken;
    final sendPort = args[1] as SendPort;
    String? dbPatch = args[3] as String?;
    String? key = args[4] as String?;
    String? local = args[9] as String?;

    if (dbPatch == null || key == null) return;
    BackgroundIsolateBinaryMessenger.ensureInitialized(rootIsolateToken);
    try {
      LocalConfiguration configLocal = localConfig(key.toIntList(), local!);
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      /// re-init firestore
      final firestore = FirebaseFirestore.instance;
      localRealm?.close();
      localRealm = Realm(configLocal);

      CloudSync(firestore, localRealm!).watchTableAsync<Stock>(
        syncProvider: "FIRESTORE",
        tableName: 'stocks',
        idField: 'stock_id',
        createRealmObject: (data) {
          return Stock(
            ObjectId(),
            currentStock: data['currentStock'],
            sold: data['sold'],
            lowStock: data['lowStock'],
            canTrackingStock: data['canTrackingStock'],
            showLowStockAlert: data['showLowStockAlert'],
            productId: data['product_id'],
            active: data['active'],
            value: data['value'],
            rsdQty: data['rsdQty'],
            supplyPrice: data['supplyPrice'],
            retailPrice: data['retailPrice'],
            lastTouched: DateTime.parse(data['lastTouched']),
            branchId: data['branch_id'],
            variantId: data['variant_id'],
            action: data['action'],
            deletedAt: data['deletedAt'] != null
                ? DateTime.parse(data['deletedAt'])
                : null,
            ebmSynced: data['ebmSynced'] ?? false,
          );
        },
        updateRealmObject: (_stock, data) {
          //find related variant
          Variant? variant = localRealm!
              .query<Variant>(r'id == $0', [data['variant_id']]).firstOrNull;

          final Stock? stock = localRealm!.query<Stock>(
              r'variantId ==$0 && branchId == $1',
              [data['variant_id'], data['branch_id']]).firstOrNull;
          if (variant != null && stock != null) {
            localRealm!.write(() {
              /// keep stock in sync
              try {
                final finalStock = data['current_stock'] is int ||
                        data['current_stock'] is double
                    ? data['current_stock'].toDouble()
                    : double.parse(data['current_stock']);
                stock.currentStock = finalStock;
                stock.rsdQty = finalStock;
                stock.lastTouched = DateTime.parse(data['last_touched']);

                // /// keep variant in sync
                variant.qty = finalStock;

                variant.rsdQty = finalStock;

                variant.ebmSynced = false;
              } catch (e, s) {
                talker.error(e);
                talker.error(s);
              }
            });
          }
        },
      );
      sendPort.send(1);
    } catch (e) {
      talker.error(e);
    }
  }

  static Future<void> flexibleSync(List<dynamic> args) async {
    String? dbPatch = args[3] as String?;
    String? key = args[4] as String?;
    final branchId = args[2] as int;
    final businessId = args[7] as int;
    String? encryptionKey = args[4] as String?;
    String? local = args[9] as String?;

    if (dbPatch == null || key == null) return;

    LocalConfiguration configLocal = localConfig(key.toIntList(), local!);

    localRealm?.close();
    localRealm = Realm(configLocal);
    final app = App.getById(AppSecrets.appId);
    final user = app?.currentUser;
    if (user == null) return;
    FlexibleSyncConfiguration config =
        flexibleConfig(user, encryptionKey!.toIntList(), dbPatch);
    realm?.close();
    realm = Realm(config);

    await IsolateHandler().updateSubscription(
        branchId: branchId,
        businessId: businessId,
        realm: realm,
        localRealm: localRealm);

    await realm?.syncSession.waitForDownload();
    await realm?.subscriptions.waitForSynchronization();
  }

  static Future<void> handleEBMTrigger(List<dynamic> args) async {
    final rootIsolateToken = args[0] as RootIsolateToken;
    final sendPort = args[1] as SendPort;
    final dbPatch = args[3] as String;
    final branchId = args[2] as int;
    String? encryptionKey = args[4] as String?;
    int? tinNumber = args[5] as int?;
    String? bhfId = args[6] as String?;
    String? URI = args[8] as String?;
    String? local = args[9] as String?;

    BackgroundIsolateBinaryMessenger.ensureInitialized(rootIsolateToken);

    if (encryptionKey == null ||
        tinNumber == null ||
        bhfId == null ||
        URI == null) return;

    final app = App.getById(AppSecrets.appId);
    final user = app?.currentUser;
    if (user == null) return;
    FlexibleSyncConfiguration config =
        flexibleConfig(user, encryptionKey.toIntList(), dbPatch);

    realm?.close();
    realm = Realm(config);
    bool anythingUpdated = false;

    LocalConfiguration configLocal =
        localConfig(encryptionKey.toIntList(), local!);

    localRealm?.close();
    localRealm = Realm(configLocal);

    /// handle missing value, part of self healing
    _selfHeal(realm: realm, localRealm: localRealm);

    // _backUp(branchId: branchId);
    List<Variant> variants = realm!.query<Variant>(
        r'ebmSynced == $0 && branchId == $1 LIMIT(1000)',
        [false, branchId]).toList();
    final talker = TalkerFlutter.init();
    List<Variant> gvariantIds = <Variant>[];
    for (Variant variant in variants) {
      if (variant.isValid && !variant.ebmSynced) {
        try {
          IVariant iVariant =
              IVariant.fromJson(variant.toEJson().toFlipperJson());

          /// do not attempt saving a variant with missing fields
          if (variant.qtyUnitCd == null ||
              variant.taxTyCd == null ||
              variant.bhfId == null ||
              variant.bhfId!.isEmpty) return;
          await RWTax().saveItem(variation: iVariant, URI: URI);
          gvariantIds.add(variant);
          talker.warning("Successfully saved Item.");
          sendPort.send('variant:${variant.id}');
          anythingUpdated = true;
        } catch (e, s) {
          talker.error(s);
        } finally {
          sendPort.send('notification:${1}');
        }
      }
    }
    List<Stock> stocks =
        realm!.query<Stock>(r'branchId ==$0 LIMIT(1000)', [branchId]).toList();

    // // Fetching all variant ids from stocks
    List<int?> variantIds = stocks.map((stock) => stock.variantId).toList();
    Map<int, Variant?> variantMap = {};
    realm!.query<Variant>(r'id IN $0', [variantIds]).forEach((variant) {
      variantMap[variant.id!] = variant;
    });
    for (Stock stock in stocks) {
      if (!stock.ebmSynced) {
        //     // Accessing variant from the pre-fetched map
        Variant? variant = variantMap[stock.variantId];
        if (variant == null) {
          continue;
        }

        try {
          IStock iStock = IStock(
            id: stock.id,
            currentStock: stock.currentStock,
          );
          IVariant iVariant =
              IVariant.fromJson(variant.toEJson().toFlipperJson());

          await RWTax().saveStock(stock: iStock, variant: iVariant, URI: URI);
          sendPort.send('stock:${stock.id}');
          talker.warning("Successfully saved Stock.");
          anythingUpdated = true;
        } catch (e, s) {
          talker.error(s);
        } finally {
          sendPort.send('notification:${1}');
        }
      }
    }

    // load all customer
    List<Customer> customers =
        realm!.query<Customer>(r'branchId ==$0', [branchId]).toList();

    for (Customer customer in customers) {
      if (!customer.ebmSynced) {
        try {
          realm!.write(() {
            // Update customer properties within the write transaction
            customer.tin = tinNumber;
            customer.bhfId = bhfId;
          });
          talker.info("saving Customer on EBM server ${customer.toEJson()}");
          if ((customer.custTin?.length ?? 0) < 9) return;
          ICustomer iCustomer =
              ICustomer.fromJson(customer.toEJson().toFlipperJson());

          await RWTax().saveCustomer(customer: iCustomer, URI: URI);
          sendPort.send('customer:${customer.id}');
          anythingUpdated = true;
        } catch (e) {
        } finally {
          sendPort.send('notification:${1}');
        }
      }
    }

    if (anythingUpdated) {
      /// send Trigger to send notification
      sendPort.send('notification:${1}');
    }
    realm?.close();
  }

  static FlexibleSyncConfiguration flexibleConfig(
    User? user,
    List<int> encryptionKey,
    String dbPatch,
  ) {
    final config = Configuration.flexibleSync(
      user!,
      realmModels,
      encryptionKey: encryptionKey,
      path: dbPatch,
    );
    return config;
  }

  static LocalConfiguration localConfig(
    List<int> encryptionKey,
    String dbPatch,
  ) {
    final config = Configuration.local(
      localModels,
      encryptionKey: encryptionKey,
      path: dbPatch,
      schemaVersion: schemaVersion,
      migrationCallback: (migration, oldSchemaVersion) {
        if (oldSchemaVersion < 2) {
          // This means we are migrating from version 1 to version 2
          migration.deleteType('Drawers');
        }
        if (oldSchemaVersion < 7) {
          // This means we are migrating from version 1 to version 2
          migration.deleteType('Log');
        }
      },
    );
    return config;
  }

  static Future<void> localData(List<dynamic> args) async {
    final dbPatch = args[3] as String;
    String? key = args[4] as String?;

    int? branchId = args[2] as int?;
    int? businessId = args[7] as int?;
    String? bhfid = args[6] as String?;
    String? URI = args[8] as String?;
    if (key == null ||
        branchId == null ||
        businessId == null ||
        bhfid == null ||
        URI == null) return;

    List<int> encryptionKey = key.toIntList();
    LocalConfiguration config = localConfig(encryptionKey, dbPatch);

    localRealm?.close();
    localRealm = Realm(config);
    final talker = TalkerFlutter.init();
    List<UnversalProduct> codes = localRealm!
        .query<UnversalProduct>(r'branchId==$0', [branchId]).toList();
    if (codes.isEmpty) {
      talker.warning("Codes empty");
      fetchDataAndSaveUniversalProducts(businessId, branchId, URI, bhfid);
    }
  }

  // Function to fetch data from the URL endpoint
  static Future<void> fetchDataAndSaveUniversalProducts(
      int businessId, int branchId, String URI, String bhfid) async {
    final talker = TalkerFlutter.init();
    try {
      Business business =
          localRealm!.query<Business>(r'serverId == $0', [businessId]).first;

      final url = URI + "/itemClass/selectItemsClass";
      final headers = {"Content-Type": "application/json"};
      final body = jsonEncode({
        "tin": business.tinNumber,
        "bhfId": bhfid,

        ///TODO: change this date to a working date in production
        "lastReqDt": "20190523000000",
      });
      talker.warning("Loading item codes");
      final response =
          await http.post(Uri.parse(url), headers: headers, body: body);
      if (response.statusCode == 200) {
        // Parse the JSON response
        final jsonResponse = json.decode(response.body);

        // Check if the response contains the data and itemClsList
        if (jsonResponse['data'] != null &&
            jsonResponse['data']['itemClsList'] != null) {
          final List<dynamic> itemClsList = jsonResponse['data']['itemClsList'];

          // Loop through the itemClsList and print the itemClsNm (name)
          for (var item in itemClsList) {
            final UniversalProduct product = UniversalProduct.fromJson(item);
            UnversalProduct? uni = localRealm!.query<UnversalProduct>(
                r'itemClsCd == $0', [product.itemClsCd]).firstOrNull;
            if (uni == null) {
              // talker.info("Now saving universal");
              localRealm!.write(() {
                localRealm!.add(
                  UnversalProduct(
                    ObjectId(),
                    id: randomNumber(),
                    itemClsCd: product.itemClsCd,
                    itemClsLvl: product.itemClsLvl,
                    itemClsNm: product.itemClsNm,
                    branchId: branchId,
                    businessId: businessId,
                    useYn: product.useYn,
                    mjrTgYn: product.mjrTgYn,
                    taxTyCd: product.taxTyCd,
                  ),
                );
              });
            }
          }
        } else {
          talker.warning('No data found in the response.');
        }
      } else {
        talker.warning(
            'Failed to load data. Status code: ${response.statusCode}');
      }
    } catch (e) {
      talker.warning('Error fetching data: $e');
    }
  }

  /// handle properties added later as the app grow but needed to support old clients
  static void _selfHeal({Realm? realm, Realm? localRealm}) {
    // Query stocks where sold == 0.0
    List<Stock> stocks = realm!.query<Stock>(r'sold == NULL').toList();

    // Loop through each stock to calculate and update sold quantity
    for (Stock stock in stocks) {
      // Query past transaction items for the stock's variant
      List<TransactionItem> items = realm.query<TransactionItem>(
          r'variantId == $0', [stock.variantId]).toList();

      // Calculate total quantity sold
      int totalQuantitySold = items.fold(0, (a, b) => a + b.qty.toInt());

      // Write updated sold quantity to realm
      realm.write(() {
        stock.sold = totalQuantitySold.toDouble();
        talker.warning("healedStock: ${stock.id}");
      });
    }

    /// query stock with variant null assign it

    List<Variant> vVariants =
        realm.query<Variant>(r'productName == NULL').toList();
    for (Variant variant in vVariants) {
      Product? product =
          realm.query<Product>(r'id == $0', [variant.productId]).firstOrNull;
      if (product != null) {
        realm.write(() {
          talker.warning("healedProductName: ${variant.id}");
          variant.productName = product.name;
        });
      }
    }

    /// first find any variant with empty itemClsCd add defaults
    List<Variant> variants =
        realm.query<Variant>(r'itemClsCd == null OR itemClsCd == ""').toList();

    for (Variant variant in variants) {
      realm.write(() {
        variant.itemClsCd = "5020230602";
      });
    }

    List<TransactionItem> items = realm
        .query<TransactionItem>(r'itemClsCd == null OR itemClsCd == ""')
        .toList();
    for (TransactionItem item in items) {
      realm.write(() {
        item.itemClsCd = "5020230602";
      });
    }

    /// track variant without stock and match them with stock

    List<Variant> variantsall = realm.all<Variant>().toList();

    for (Variant variant in variantsall) {
      final stock =
          realm.query<Stock>(r'variantId == $0', [variant.id]).firstOrNull;
      if (stock == null) {
        talker.warning("healed Stock: ${variant.id}");
        realm.write(() {
          final newStock = Stock(
            ObjectId(),
            id: randomNumber(),
            lastTouched: DateTime.now(),
            branchId: variant.branchId,
            variantId: variant.id!,
            action: AppActions.created,
            retailPrice: variant.retailPrice,
            supplyPrice: variant.supplyPrice,
            currentStock: variant.qty,
            rsdQty: variant.qty,
            ebmSynced: false,
            value: (variant.qty * variant.retailPrice).toDouble(),
            productId: variant.productId,
            active: false,
          );
          realm.add(newStock);
        });
      }
    }

    /// Loop through Configuration and remove any duplicate configuration found e.g there should be one Conciguration.taxType
    List<Configurations> configurations = realm.all<Configurations>().toList();
    Set<String> uniqueTaxTypes = {};

    for (Configurations config in configurations) {
      if (!uniqueTaxTypes.contains(config.taxType!)) {
        uniqueTaxTypes.add(config.taxType!);
      } else {
        realm.write(() {
          realm.delete(config);
          talker.warning("Deleted unnessary taxes");
        });
      }
    }

    List<EBM> ebms = realm.all<EBM>().toList();
    Set<String> uniqueEbms = {};

    for (EBM config in ebms) {
      if (!uniqueEbms.contains(config.branchId.toString())) {
        uniqueEbms.add(config.branchId.toString());
      } else {
        realm.write(() {
          realm.delete(config);
          talker.warning("Deleted ebm config");
        });
      }
    }
    List<Variant> variantsAll = localRealm!.all<Variant>().toList();

    /// check for variant that do not have stock assigned asign it
    for (Variant variant in variantsAll) {
      if (variant.stock == null) {
        /// find stock assign it
        Stock? stock = localRealm.query<Stock>(
            r'variantId ==$0 && branchId == $1',
            [variant.id, variant.branchId]).firstOrNull;
        if (stock != null) {
          localRealm.write(() {
            variant.stock = stock;
            talker.warning("Updated stock");
          });
        }
      }
    }
  }
}
