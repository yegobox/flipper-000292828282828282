import 'dart:async';
import 'dart:convert';

import 'package:flipper_models/models/order.dart';
import 'package:flipper_models/models/b.dart';
import 'package:flipper_models/models/variant_stock.dart';
import 'package:flipper_models/models/unit.dart';
import 'package:flipper_models/models/spenn.dart';
import 'package:flipper_models/models/sync.dart';

import 'package:flipper_models/models/stock.dart';

import 'package:flipper_models/models/product.dart';
import 'package:flipper_models/models/variation.dart';

import 'package:flipper_models/models/login.dart';

import 'package:flipper_models/models/color.dart';

import 'package:flipper_models/models/category.dart';

import 'package:flipper_models/models/branch.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flipper_models/models/business.dart';
import 'package:couchbase_lite_dart/couchbase_lite_dart.dart';
import 'Queries.dart';
import 'abstractions/api.dart';
import 'constants.dart';
import 'http_api.dart';
import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';

class LiteApi<T> implements Api {
  Replicator? replicator;
  Database db = Database("db");
  ExtendedClient client = ExtendedClient(http.Client());
  StreamController<Stock> controller = StreamController<Stock>.broadcast();
  String flipperApi = "https://flipper.yegobox.com";
  String apihub = "https://apihub.yegobox.com";
  dynamic Q14;
  dynamic Q1;
  dynamic Q15;
  dynamic Q9;
  dynamic Q3;
  dynamic Q12;
  dynamic Q10;
  dynamic Q16;
  dynamic Q17;
  dynamic Q18;
  dynamic Q5;
  dynamic Q2;
  dynamic Q19;
  dynamic Q20;
  dynamic Q21;
  dynamic Q22;
  registerQueries() {
    Q14 = Query(db, Queries.Q_14);
    Q1 = Query(db, Queries.Q_1);
    Q3 = Query(db, Queries.Q_3);
    Q15 = Query(db, Queries.Q_15);
    Q9 = Query(db, Queries.Q_9);
    Q12 = Query(db, Queries.Q_12);
    Q10 = Query(db, Queries.Q_10);
    Q16 = Query(db, Queries.Q_16);
    Q17 = Query(db, Queries.Q_17);
    Q18 = Query(db, Queries.Q_18);
    Q5 = Query(db, Queries.Q_5);
    Q2 = Query(db, Queries.Q_2);
    Q19 = Query(db, Queries.Q_19);
    Q20 = Query(db, Queries.Q_20);
    Q21 = Query(db, Queries.Q_21);
    Q22 = Query(db, Queries.Q_22);
  }

  LiteApi({required Database database}) {
    db = database;
    init();
    //pre-register queries
  }
  init() async {
    //start the database
    // final Directory appDocDir = await getApplicationDocumentsDirectory();
    // final String appDocPath = appDocDir.path;
    // ignore: prefer_single_quotes
    // db = Database("main", directory: appDocPath);
    // print(db);
    if (!db.isOpen) {
      db.open();
    }
    registerQueries();

    // final FlipperConfig flipperConfig =
    //     await ProxyService.firestore.getConfigs();
    // if (flipperConfig == null) {
    //   return null;
    // }
    // final String gatewayUrl = flipperConfig.gateway;
    // final String username = flipperConfig.username;
    // final String password = flipperConfig.password;
    // TODO: only enable replication in production
    // assert(gatewayUrl != null);
    // assert(username != null);
    // assert(password != null);
    // final gatewayUrl = "yegobox.com:4985";
    // replicator = Replicator(
    //   db,
    //   endpointUrl: 'ws://$gatewayUrl/main/',
    //   username: 'admin',
    //   password: 'iloveaurore',
    //   channels: ["300"],
    //   continuous: true,
    //   replicatorType: ReplicatorType.pushAndPull,
    // );
    // replicator!.addChangeListener((status) {
    //   print('Replicator status: ' + status.activityLevel.toString());
    // });
    // replicator!.start();
  }

  @override
  Future<Sync> authenticateWithOfflineDb({required String userId}) async {
    final response = await client.post(Uri.parse("$apihub/auth"),
        body: jsonEncode({'userId': userId}),
        headers: {'Content-Type': 'application/json'});

    ProxyService.box
        .write(key: 'bearerToken', value: syncFromJson(response.body).token);
    ProxyService.box
        .write(key: 'userId', value: syncFromJson(response.body).userId);
    return syncFromJson(response.body);
  }

  @override
  Future<List<Branch>> branches({required String businessId}) async {
    // Q15.parameters = {'T': AppTables.branch, 'BUSINESSID': businessId};
    // final ResultSet result = Q15.execute();
    // final List<Branch> branches = [];
    // for (Map map in result.allResults) {
    //   branches.add(sbranchFromJson(jsonEncode(map)));
    // }
    // return branches;
    final response =
        await client.get(Uri.parse("$apihub/api/branches/$businessId"));
    return branchFromJson(response.body);
  }

  @override
  Future<List<Business>> businesses() async {
    // Q14.parameters = {'T': AppTables.business};
    // final ResultSet business = Q14.execute();
    // final List<Business> businesses = [];
    // for (Map map in business.allResults) {
    //   businesses.add(sbusinessFromJson(jsonEncode(map)));
    // }
    // return businesses;
    final response = await client.get(Uri.parse("$apihub/api/businesses"));
    return businessFromJson(response.body);
  }

  @override
  Future<List<Category>> categories({required String branchId}) async {
    Q9.parameters = {'VALUE': AppTables.category, 'BRANCHID': branchId};
    final ResultSet business = Q9.execute();
    final List<Category> categories = [];
    // for (Map map in business.allResults) {
    //   categories.add(scategoryFromJson(jsonEncode(map)));
    // }
    while (business.next()) {
      final row = business.rowDict;
      categories.add(scategoryFromJson(row.json));
    }
    return categories;
  }

  @override
  Future<List<PColor>> colors({required String branchId}) async {
    Q12.parameters = {'T': AppTables.color, 'BRANCHID': branchId};
    final ResultSet colors = Q12.execute();

    final List<PColor> _colors = [];
    while (colors.next()) {
      final row = colors.rowDict;
      _colors.add(spColorFromJson(row.json));
    }
    return _colors;
    // 2cd5e891-ea91-47ad-9606-b666facad96e
    // 0a62d674-915c-4483-80e3-b792448b64bc
    // 0a62d674-915c-4483-80e3-b792448b64bc
    // 0a62d674-915c-4483-80e3-b792448b64bc
  }

  @override
  Future<int> create<T>({required Map data, required String endPoint}) async {
    if (endPoint == 'color') {
      for (String co in data['colors']) {
        final colorId = Uuid().v1();
        Map newColor = {
          'id': colorId,
          'name': co,
          'channels': data['channels'],
          'table': data['table'],
          'branchId': data['branchId'],
          'active': data['active'],
        };
        final doc = Document(colorId, data: newColor);
        db.saveDocument(doc);
      }
      return 200;
    }
    final doc = Document(data['id'], data: data);

    db.saveDocument(doc);
    return 200;
  }

  @override
  Future<Product> createProduct({required Product product}) async {
    final Map data = product.toJson();
    final productid = Uuid().v1();
    data['id'] = productid;
    data['active'] = false;
    data['description'] = 'description';
    data['hasPicture'] = false;
    final doc = Document(data['id'], data: data);

    final Document productDocument = db.saveDocument(doc);
    //create  variation
    final id = Uuid().v1();
    final String? userId = ProxyService.box.read(key: 'userId');
    final String? branchId = ProxyService.box.read(key: 'branchId');
    final Map productMap = json.decode(productDocument.json);
    final variation = new Variation(
      id: id,
      name: 'Regular',
      sku: 'sku',
      productId: productMap['id'],
      unit: 'Per Item',
      table: AppTables.variation,
      channels: [userId!],
      productName: productMap['name'],
      branchId: branchId!,
      taxName: 'N/A', //TODO: get value from branch/business config
      taxPercentage: 0.0,
    );
    final variationDoc = Document(variation.id, data: variation.toJson());
    final Document variationDocument = db.saveDocument(variationDoc);
    final stockId = Uuid().v1() + '-stock';
    final Map variationMap = json.decode(variationDocument.json);
    //create stock now.

    final stock = new Stock(
      id: stockId,
      branchId: branchId,
      variantId: variationMap['id'],
      lowStock: 0.0,
      currentStock: 0.0,
      supplyPrice: 0.0,
      retailPrice: 0.0,
      canTrackingStock: false,
      showLowStockAlert: false,
      channels: [userId],
      table: AppTables.stock,
      productId: productMap['id'],
      active: false,
      value: 0,
    );
    final Document stockDoc = Document(stock.id, data: stock.toJson());
    db.saveDocument(stockDoc);

    return sproductFromJson(productDocument.json);
  }

  @override
  Future<List<Product>> isTempProductExist() async {
    Q5.parameters = {'T': AppTables.product, 'NAME': 'temp'};
    final ResultSet product = Q5.execute();
    final List<Product> p = [];

    while (product.next()) {
      final row = product.rowDict;
      p.add(sproductFromJson(row.json));
    }
    return p;
  }

  @override
  Future<bool> logOut() async {
    ProxyService.box.remove(key: 'userId');
    ProxyService.box.remove(key: 'bearerToken');
    ProxyService.box.remove(key: 'branchId');
    ProxyService.box.remove(key: 'businessId');
    return true;
  }

  @override
  Future<Login> login({required String phone}) async {
    final response = await client
        .post(Uri.parse("$flipperApi/open-login"), body: {'phone': phone});
    final Login resp = loginFromJson(response.body);
    ProxyService.box.write(key: 'UToken', value: resp.token);
    return resp;
  }

  @override
  Future<List<Product>> products() async {
    Q16.parameters = {'T': AppTables.product};
    final ResultSet product = Q16.execute();
    final List<Product> p = [];

    while (product.next()) {
      final row = product.rowDict;
      p.add(sproductFromJson(row.json));
    }
    return p;
  }

  @override
  Future<int> signup({required Map business}) async {
    final http.Response response = await client.post(
        Uri.parse("$apihub/api/business"),
        body: jsonEncode(business),
        headers: {'Content-Type': 'application/json'});
    return response.statusCode;
  }

  @override
  Future<List<Stock>> stocks({required String productId}) async {
    final List<Stock> stocks = [];

    Q19.parameters = {'T': AppTables.stock, 'PRODUCTID': productId};
    final ResultSet stock = Q19.execute();

    for (Map map in stock.allResults) {
      stocks.add(sstockFromJson(jsonEncode(map)));
    }
    return stocks;
  }

  @override
  Future<List<Unit>> units({required String branchId}) async {
    Q10.parameters = {'T': AppTables.unit, 'BRANCHID': branchId};
    final ResultSet unit = Q10.execute();
    final List<Unit> _units = [];
    while (unit.next()) {
      final row = unit.rowDict;
      _units.add(sunitFromJson(row.json));
    }
    return _units;
  }

  @override
  Future<int> update<T>({required Map data, required String endPoint}) async {
    final Map dn = data;
    Document doc = db.getMutableDocument(dn['id']);
    data.forEach((key, value) {
      doc.properties[key] = value;
    });
    db.saveDocument(doc);
    return 200;
  }

  @override
  Future<List<Variation>> variants(
      {required String branchId, required String productId}) async {
    final List<Variation> variants = [];
    Q1.parameters = {'T': AppTables.variation, 'PRODUCTID': productId};
    final ResultSet _variants = Q1.execute();
    while (_variants.next()) {
      final row = _variants.rowDict;
      variants.add(svariationFromJson(row.json));
    }
    return variants;
  }

  @override
  Future<List<VariantStock>> variantStock(
      {required String branchId, required String variantId}) async {
    Q18.parameters = {'T': AppTables.variation, 'VARIANTID': variantId};
    final ResultSet business = Q18.execute();
    final List<VariantStock> variantStocks = [];
    while (business.next()) {
      final row = business.rowDict;
      variantStocks.add(svariantStockFromJson(row.json));
    }
    return variantStocks;
  }

  @override
  Future<bool> delete({required String id, String? endPoint}) async {
    return db.purgeDocument(id);
  }

  @override
  Future<int> addUnits({required Map data}) async {
    String branchId = ProxyService.box.read(key: 'branchId');
    String userId = ProxyService.box.read(key: 'userId');
    for (Map map in data['units']) {
      final unitId = Uuid().v1();
      map['id'] = unitId;
      map['table'] = AppTables.unit;
      map['channels'] = [userId];
      map['branchId'] = branchId;
      final doc = Document(unitId, data: map);
      db.saveDocument(doc);
    }
    return 200;
  }

  @override
  Future<PColor> getColor({required String id, String? endPoint}) async {
    Document doc = db.getDocument(id);
    return spColorFromJson(doc.json);
  }

  @override
  Future<int> addVariant(
      {required List<Variation> data,
      required double retailPrice,
      required double supplyPrice}) async {
    for (Variation variation in data) {
      Map d = variation.toJson();

      final doc = Document(d["id"], data: d);
      Document variant = db.saveDocument(doc);

      //create related stock
      final stockId = Uuid().v1() + '-stock';
      String? userId = ProxyService.box.read(key: 'userId');
      final stock = new Stock(
        id: stockId,
        branchId: d['branchId'],
        variantId: variant.ID,
        lowStock: 0.0,
        currentStock: 0.0,
        supplyPrice: supplyPrice,
        retailPrice: retailPrice,
        canTrackingStock: false,
        showLowStockAlert: false,
        channels: [userId!],
        table: AppTables.stock,
        productId: d['productId'],
        value: 0,
        active: false,
      );
      final Document stockDoc = Document(stock.id, data: stock.toJson());
      db.saveDocument(stockDoc);
    }
    return 200;
  }

  @override
  Future<Product> getProduct({required String id}) async {
    Document doc = db.getDocument(id);

    return sproductFromJson(doc.json);
  }

  @override
  Stream<Stock> stockByVariantIdStream({required String variantId}) async* {
    Q2.parameters = {'T': AppTables.stock, 'VARIANTID': variantId};
    final ResultSet stock = Q2.execute();
    final List<Stock> stocks = [];
    for (Map map in stock.allResults) {
      stocks.add(sstockFromJson(jsonEncode(map)));
    }
    yield stocks[0];
  }

  @override
  Future<Stock> stockByVariantId({required String variantId}) async {
    Q2.parameters = {'T': AppTables.stock, 'VARIANTID': variantId};
    final ResultSet stock = Q2.execute();
    final List<Stock> stocks = [];
    for (Map map in stock.allResults) {
      stocks.add(sstockFromJson(jsonEncode(map)));
    }
    return stocks[0];
  }

  Future<Order?> pendingOrderExist() async {
    Q3.parameters = {'T': AppTables.order, 'S': 'pending'};
    final ResultSet results = Q3.execute();
    Order? order;
    while (results.next()) {
      final row = results.rowDict;
      order = sorderFromJson(row.json);
    }
    return order;
  }

  @override
  Future<Order> createOrder(
      {required double customAmount,
      required Variation variation,
      required double price,
      bool useProductName = false,
      String orderType = 'custom',
      double quantity = 1}) async {
    final id4 = Uuid().v1();
    final orderItemId = Uuid().v1();
    final ref = Uuid().v1();
    final orderNUmber = Uuid().v1();
    String userId = ProxyService.box.read(key: 'userId');
    String branchId = ProxyService.box.read(key: 'branchId');
    Order? existOrder = await pendingOrderExist();

    // Document docStock = db.getDocument(stockId);
    // Stock stock = sstockFromJson(docStock.json);

    if (existOrder == null) {
      Order order = new Order(
        id: id4,
        reference: ref,
        orderNumber: orderNUmber,
        status: 'pending',
        orderType: orderType,
        active: true,
        draft: true,
        channels: [userId],
        subTotal: customAmount,
        table: AppTables.order,
        cashReceived: customAmount,
        updatedAt: DateTime.now().toIso8601String(),
        customerChangeDue: 0.0, //fix this
        paymentType: 'Cash',
        branchId: branchId,
        createdAt: DateTime.now().toIso8601String(),
        orderItems: [
          OrderItem(
            count: quantity,
            name: useProductName ? variation.productName : variation.name,
            variantId: variation.id,
            id: orderItemId,
            price: price,
            orderId: id4,
          )
        ],
      );
      final Document _doc = Document(id4, data: order.toJson());
      Document d = db.saveDocument(_doc);

      return sorderFromJson(d.json);
    } else {
      OrderItem item = OrderItem(
        count: 1,
        name: useProductName ? variation.productName : variation.name,
        variantId: variation.id,
        id: orderItemId,
        price: price,
        orderId: existOrder.id,
      );
      existOrder.orderItems.add(item);
      update(data: existOrder.toJson(), endPoint: 'order');
      return existOrder;
    }
  }

  @override
  Future<Variation> getCustomProductVariant() async {
    Q20.parameters = {'T': AppTables.product, 'NAME': 'Custom Amount'};
    final ResultSet results = Q20.execute();
    final Map map = results.allResults[0];
    Q21.parameters = {'T': AppTables.variation, 'PRODUCTID': map['id']};
    final ResultSet rresults = Q21.execute();
    Document doc = db.getDocument(rresults.allResults[0]['id']);
    return svariationFromJson(doc.json);
  }

  @override
  Future<List<Order>> orders() async {
    Q3.parameters = {'T': AppTables.order, 'S': 'pending'};
    final ResultSet order = Q3.execute();
    final List<Order> orders = [];
    //NOTE: not for debuging incase I need to quickly delete sth
    // for (Map map in order.allResults) {
    //   db.purgeDocument(map['id']);
    // }
    while (order.next()) {
      final row = order.rowDict;
      orders.add(sorderFromJson(row.json));
    }
    return orders;
  }

  /// experimenting methods
  /// this methods are here to experiments before we
  /// take big decision in general app
  Future<B> insertB() async {
    Document b = Document('1', data: {
      'id': '1b',
      'name': 'name',
      'asi': [
        {
          'id': '1a',
          'name': 'aa',
        },
        {
          'id': '1aa',
          'name': 'aaa',
        }
      ]
    });
    Document d = db.saveDocument(b);
    return sbFromJson(d.json);
  }

  @override
  Future<Variation> variant({required String variantId}) async {
    Document doc = db.getDocument(variantId);
    return svariationFromJson(doc.json);
  }

  @override
  Future<Spenn> spennPayment(
      {required double amount, required phoneNumber}) async {
    final String transactionNumber = Uuid().v1();
    String userId = ProxyService.box.read(key: 'userId');
    // final response = await client.post(Uri.parse("$flipperApi/pay"),
    //     body: jsonEncode({
    //       'amount': amount,
    //       'message': '-' + transactionNumber.substring(0, 4),
    //       'phoneNumber': '+25' + phoneNumber,
    //       'uid': userId
    //     }),
    //     headers: {
    //       'Content-Type': 'application/json',
    //       'Accept': 'application/json'
    //     });
    // return spennFromJson(response.body);
    print('+25' + phoneNumber);
    Spenn spenn = new Spenn(id: '1', requestId: 'uid', status: 'complented');
    return spenn;
    //
  }

  @override
  Future<void> collectCashPayment(
      {required double cashReceived, required Order order}) async {
    Map data = order.toJson();
    data['cashReceived'] = cashReceived;
    data['status'] = 'completed';
    update(data: data, endPoint: 'order');
  }
}
