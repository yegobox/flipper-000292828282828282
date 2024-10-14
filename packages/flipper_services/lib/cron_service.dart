import 'dart:async';
import 'dart:io';
import 'dart:isolate';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flipper_models/isolateHandelr.dart';
import 'package:flipper_services/constants.dart';
import 'package:flipper_models/power_sync/schema.dart';
import 'package:flutter/services.dart';
import 'package:flipper_models/realm_model_export.dart';
import 'package:flipper_services/drive_service.dart';
import 'package:flipper_services/proxy.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:flipper_models/DownloadQueue.dart';
import 'PullChange.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flipper_models/CloudSync.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CronService {
  final drive = GoogleDrive();

  Future<void> companyWideReport() async {
    // Implement company-wide report logic
  }

  Future<void> customerBasedReport() async {
    // Implement customer-based report logic
  }

  Future<void> connectBlueToothPrinter() async {
    // Implement Bluetooth connection logic
  }

  Future<void> deleteReceivedMessageFromServer() async {
    // Implement delete received message logic
  }
  Isolate? isolate;

  final talker = TalkerFlutter.init();

  void isolateKill() {
    if (isolate != null) {
      isolate?.kill();
    }
  }

  Future<void> _spawnIsolate(String name, dynamic isolateHandler) async {
    if (ProxyService.box.getBusinessId() == null) return;
    try {
      if (ProxyService.local.realm == null) return;
      Business business = ProxyService.local.realm!.query<Business>(
          r'serverId == $0', [ProxyService.box.getBusinessId()!]).first;
      // talker.warning("Business ID ${ProxyService.box.getBusinessId()}");
      if (ProxyService.local
          .isTaxEnabled(business: ProxyService.local.getBusiness())) {
        ReceivePort receivePort = ReceivePort();

        /// kill any isolate that might be registered before we register new one!
        if (isolate != null) {
          isolateKill();
        }
        isolate = await Isolate.spawn(
          isolateHandler,
          [
            RootIsolateToken.instance,
            receivePort.sendPort,
            ProxyService.box.getBranchId()!,
            'synced-removed',
            ProxyService.box.encryptionKey(),
            business.tinNumber,
            ProxyService.box.bhfId() ?? "00",
            ProxyService.box.getBusinessId(),
            ProxyService.box.getServerUrl(),
            await ProxyService.local.dbPath(
                path: 'local', folder: ProxyService.box.getBusinessId()),
          ],
        );

        receivePort.listen(
          (message) async {
            /// receive computed value that is considered that we have successfully completed updating EBM server
            /// then it is time to update the database and mark the model as updated this will help us to know
            /// if we are in sync with EBM server for all models we have inside our app
            String identifier = message as String;
            List<String> separator = identifier.split(":");
            // talker.warning(
            //     "About to update model ${separator.first} with ${separator.last}");
            if (separator.first == "variant") {
              // find this variant in db
              Variant variant = ProxyService.local.realm!
                  .query<Variant>(r'id == $0', [separator.last]).first;
              ProxyService.local.markModelForEbmUpdate<Variant>(model: variant);
            }
            if (separator.first == "stock") {
              // find this variant in db
              Stock stock = ProxyService.local.realm!
                  .query<Stock>(r'id == $0', [separator.last]).first;

              ProxyService.local.markModelForEbmUpdate<Stock>(model: stock);
            }
            if (separator.first == "notification") {
              /// in event when we are done with work in isolate
              /// then we kill current isolate, but it is very important to know
              /// that we receive this notification from isolate only when some work was done inside isolate
              /// this means if there is no work done, the isolate will fail to trigger the kill event to use to be able
              /// to kill the current isolate, this is why we have at the bottom of the code to forcefully kill whatever isolate
              /// that is hanging somewhere around
              isolate?.kill();
              ProxyService.notification
                  .sendLocalNotification(body: "System is up to date with EBM");
            }
          },
        );
        // Isolate.current.addOnExitListener(await receivePort.last);
        await Future.delayed(const Duration(seconds: 20));
        isolate?.kill();
      }
    } catch (error, s) {
      talker.warning('Error managing isolates: $s');
    }
  }

  /// Schedules various tasks and timers to handle data synchronization, device publishing, and other periodic operations.
  ///
  /// This method sets up the following scheduled tasks:
  /// - Initializes Firebase messaging and subscribes to business notifications.
  /// - Periodically pulls data from Realm.
  /// - Periodically pushes data to the server.
  /// - Periodically synchronizes Firestore data.
  /// - Periodically runs a demo print operation.
  /// - Periodically pulls data from the server.
  /// - Periodically attempts to publish the device to the server.
  ///
  /// The durations of these tasks are determined by the corresponding private methods.
  Future<void> schedule() async {
    //if there is network connection
    if (ConnectivityResult.none != await Connectivity().checkConnectivity()) {
      await ProxyService.syncFirestore.firebaseLogin();
    }

    try {
      PullChange().start(
          firestore: FirebaseFirestore.instance,
          localRealm: ProxyService.local.realm!);
      ProxyService.box.writeBool(key: 'isOrdering', value: false);
    } catch (e) {}

    talker.warning("FirebaseUser ${FirebaseAuth.instance.currentUser}");

    if (ProxyService.box.forceUPSERT()) {
      try {
        /// get all Products
        List<Product> products =
            ProxyService.local.realm!.all<Product>().toList();
        for (Product product in products) {
          ProxyService.syncFirestore.updateRecord(
              tableName: productsTable,
              idField: "${productsTable.singularize()}_id",
              map: product.toEJson().toFlipperJson(),
              id: product.id!,
              syncProvider: SyncProvider.FIRESTORE);
        }
        List<Assets> assets = ProxyService.local.realm!.all<Assets>().toList();
        for (Assets asset in assets) {
          ProxyService.syncFirestore.updateRecord(
              tableName: assetsTable,
              idField: "${assetsTable.singularize()}_id",
              map: asset.toEJson().toFlipperJson(),
              id: asset.id!,
              syncProvider: SyncProvider.FIRESTORE);
        }

        List<Variant> variants =
            ProxyService.local.realm!.all<Variant>().toList();
        for (Variant variant in variants) {
          ProxyService.syncFirestore.updateRecord(
              tableName: variantTable,
              idField: "${variantTable.singularize()}_id",
              map: variant.toEJson().toFlipperJson(),
              id: variant.id!,
              syncProvider: SyncProvider.FIRESTORE);
        }

        List<Stock> stocks = ProxyService.local.realm!.all<Stock>().toList();
        for (Stock stock in stocks) {
          ProxyService.syncFirestore.updateRecord(
              tableName: stocksTable,
              idField: "${stocksTable.singularize()}_id",
              map: stock.toEJson(includeVariant: true).toFlipperJson(),
              id: stock.id!,
              syncProvider: SyncProvider.FIRESTORE);
        }

        List<TransactionItem> items =
            ProxyService.local.realm!.all<TransactionItem>().toList();
        for (TransactionItem item in items) {
          ProxyService.syncFirestore.updateRecord(
              tableName: transactionItemsTable,
              idField: "${transactionItemsTable.singularize()}_id",
              map: item.toEJson().toFlipperJson(),
              id: item.id!,
              syncProvider: SyncProvider.FIRESTORE);
        }

        List<Access> accesses =
            ProxyService.local.realm!.all<Access>().toList();
        for (Access access in accesses) {
          ProxyService.syncFirestore.updateRecord(
              tableName: accessesTable,
              idField: "${accessesTable.singularize()}_id",
              map: access.toEJson().toFlipperJson(),
              id: access.id!,
              syncProvider: SyncProvider.FIRESTORE);
        }
        List<StockRequest> requests =
            ProxyService.local.realm!.all<StockRequest>().toList();
        for (StockRequest request in requests) {
          ProxyService.syncFirestore.updateRecord(
              tableName: stockRequestsTable,
              idField: "${stockRequestsTable.singularize()}_id",
              map: request.toEJson().toFlipperJson(),
              id: request.id!,
              syncProvider: SyncProvider.FIRESTORE);
        }
      } catch (e, s) {
        talker.warning(e);
        talker.error(s);
      }
    }

    // CloudSync(firestore, realm).deleteDuplicate(tableName: productsTable);
    // CloudSync(firestore, realm).deleteDuplicate(tableName: variantTable);
    // CloudSync(firestore, realm).deleteDuplicate(tableName: stocksTable);
    // CloudSync(firestore, realm)
    //     .deleteDuplicate(tableName: transactionItemsTable);
    // CloudSync(firestore, realm).deleteDuplicate(tableName: stockRequestsTable);
    // CloudSync(firestore, realm).deleteDuplicate(tableName: accessesTable);
    // CloudSync(firestore, realm)
    //     .deleteDuplicate(tableName: transactionItemsTable);
    // CloudSync(firestore, realm).deleteDuplicate(tableName: assetsTable);
    // CloudSync(firestore, realm).deleteDuplicate(tableName: categoriesTable);

    // CloudSync(firestore, realm).deleteDuplicate(tableName: customersTable);
    // CloudSync(firestore, realm).deleteDuplicate(tableName: devicesTable);
    Timer.periodic(Duration(seconds: 10), (Timer t) async {
      if (Platform.isWindows) {
        if (FirebaseAuth.instance.currentUser != null) {
          // https://github.com/firebase/flutterfire/issues/12055
          await ProxyService.syncFirestore.firebaseLogin();
          PullChange().start(
              firestore: FirebaseFirestore.instance,
              localRealm: ProxyService.local.realm!);
        }
      }
    });
    Timer.periodic(_getHeartBeatDuration(), (Timer t) async {
      // backUpPowerSync();
      if (ProxyService.box.getUserId() == null ||
          ProxyService.box.getBusinessId() == null) return;

      /// bootstrap data for universal Product names;

      await _spawnIsolate("local", IsolateHandler.localData);

      await _spawnIsolate("synced", IsolateHandler.handleEBMTrigger);
    });

    // create a compute function to keep track of unsaved data back to EBM do this in background
    /// keep assets downloaded and saved locally as they are added by other users in same business/branch
    Timer.periodic(_downloadFileSchedule(), (Timer t) async {
      try {
        final downloadQueue = DownloadQueue(3);

        int? branchId = ProxyService.box.getBranchId();
        if (ProxyService.local.realm == null || branchId == null) {
          talker.warning("realm is null");
          return;
        }
        // ProxyService.box.writeBool(key: 'doneDownloadingAsset', value: false);
        if (!ProxyService.box.doneDownloadingAsset()) {
          List<Assets> assets = ProxyService.local.realm!
              .query<Assets>(r'branchId == $0', [branchId]).toList();

          for (Assets asset in assets) {
            if (asset.assetName != null) {
              downloadQueue.addToQueue(
                DownloadParams(
                  branchId: branchId,
                  assetName: asset.assetName!,
                  subPath: "branch",
                ),
              );
            }
          }
        }
      } catch (e, s) {
        talker.warning(e);
        talker.error(s);
      } finally {
        ProxyService.box.writeBool(key: 'doneDownloadingAsset', value: true);
      }
    });

    /// heart beat

    await _setupFirebaseMessaging();

    // Other scheduled tasks...
  }

  static String camelToSnakeCase(String input) {
    return input.replaceAllMapped(
      RegExp(r'([A-Z])'),
      (Match match) => '_${match.group(1)!.toLowerCase()}',
    );
  }

  void pullChanges() async {
    try {
      /// given table query data in
      /// on receive then update
    } catch (e) {
      print(e);
    }
  }

  Future<void> _setupFirebaseMessaging() async {
    Business? business = await ProxyService.local.getBusiness();
    String? token;

    if (!Platform.isWindows && !isMacOs && !isIos) {
      token = await FirebaseMessaging.instance.getToken();

      Map updatedBusiness = business.toEJson() as Map<String, dynamic>;
      updatedBusiness['deviceToken'] = token.toString();
    }
  }

  Duration _downloadFileSchedule() {
    return Duration(minutes: kDebugMode ? 1 : 2);
  }

  Duration _getHeartBeatDuration() {
    return Duration(seconds: kDebugMode ? 360 : 360);
  }

  Duration _pull() {
    return Duration(seconds: kDebugMode ? 120 : 60);
  }
}
