import 'package:flipper_models/models/variant_stock.dart';
import 'dart:io';
import 'package:flipper_models/models/unit.dart';

import 'package:flipper_models/models/sync.dart';

import 'package:flipper_models/models/stock.dart';

import 'package:flipper_models/models/product.dart';

import 'package:flipper_models/models/login.dart';

import 'package:flipper_models/models/color.dart';

import 'package:flipper_models/models/category.dart';

import 'package:flipper_models/models/branch.dart';
import 'package:flipper_services/proxy.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flipper_models/models/business.dart';
import 'package:couchbase_lite_dart/couchbase_lite_dart.dart';
import 'abstractions/api.dart';
import 'constants.dart';
import 'http_api.dart';
import 'package:http/http.dart' as http;

class LiteApi implements Api {
  late Database db;
  late Replicator replicator;
  ExtendedClient client = ExtendedClient(http.Client());
  String userId = ProxyService.box.read(key: 'userId');
  // HttpApi();
  String flipperApi = "https://flipper.yegobox.com";
  String apihub = "https://apihub.yegobox.com";

  LiteApi() {
    print('we got here');
    init();
  }
  init() async {
    //start the database
    final Directory appDocDir = await getApplicationDocumentsDirectory();
    final String appDocPath = appDocDir.path;
    // ignore: prefer_single_quotes
    db = Database("main", directory: appDocPath);
    if (!db.isOpen) {
      db.open();
    }
    // final FlipperConfig flipperConfig =
    //     await ProxyService.firestore.getConfigs();
    // if (flipperConfig == null) {
    //   return null;
    // }
    // final String gatewayUrl = flipperConfig.gateway;
    // final String username = flipperConfig.username;
    // final String password = flipperConfig.password;

    // assert(gatewayUrl != null);
    // assert(username != null);
    // assert(password != null);
    final gatewayUrl = "yegobox.com:4985";
    replicator = Replicator(db,
        endpointUrl: 'ws://$gatewayUrl/main/',
        username: 'admin',
        password: 'iloveaurore',
        channels: ["300"],
        continuous: true,
        replicatorType: ReplicatorType.push);

    // Set up a status listener
    replicator.addChangeListener((status) {
      print('Replicator status: ' + status.activityLevel.toString());
    });
    replicator.start();
  }

  @override
  Future<Sync> authenticateWithOfflineDb({required String userId}) {
    // TODO: implement authenticateWithOfflineDb
    throw UnimplementedError();
  }

  @override
  Future<List<Branch>> branches({required String businessId}) {
    // TODO: implement branches
    throw UnimplementedError();
  }

  @override
  Future<List<Business>> businesses() {
    // TODO: implement businesses
    throw UnimplementedError();
  }

  @override
  Future<List<Category>> categories({required String branchId}) {
    // TODO: implement categories
    throw UnimplementedError();
  }

  @override
  void cleanKeyPad() {
    // TODO: implement cleanKeyPad
  }

  @override
  Future<List<PColor>> colors({required String branchId}) {
    // TODO: implement colors
    throw UnimplementedError();
  }

  @override
  Future<int> create<T>({T? data, required String endPoint}) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Product> createProduct({required Product product}) {
    // TODO: implement createProduct
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> isTempProductExist() {
    // TODO: implement isTempProductExist
    throw UnimplementedError();
  }

  @override
  Future<bool> logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  Future<Login> login({required String phone}) async {
    final response = await client
        .post(Uri.parse("$flipperApi/open-login"), body: {'phone': phone});
    return loginFromJson(response.body);
  }

  @override
  Future<List<Product>> products() {
    final q = Query(db,
        'SELECT id,name,active,currency,categoryId,latitude,longitude,userId,typeId,timeZone,createdAt,updatedAt,channels,country,businessUrl,hexColor,image,type,table WHERE table=\$VALUE AND userId=\$USERID');

    q.parameters = {'VALUE': AppTables.business, 'USERID': userId};
    final ResultSet business = q.execute();

    for (Map map in business.allResults) {
      //done
    }
    throw UnimplementedError();
  }

  @override
  Future<int> signup({required Map business}) {
    // TODO: implement signup
    throw UnimplementedError();
  }

  @override
  Future<List<Stock>> stocks({required String productId}) {
    // TODO: implement stocks
    throw UnimplementedError();
  }

  @override
  Future<List<Unit>> units({required String branchId}) {
    // TODO: implement units
    throw UnimplementedError();
  }

  @override
  Future<int> update<T>({T? data, required String endPoint}) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<List<VariantStock>> variantProduct(
      {required String branchId, required String productId}) {
    // TODO: implement variantProduct
    throw UnimplementedError();
  }

  @override
  Future<List<VariantStock>> variantStock(
      {required String branchId, required String variantId}) {
    // TODO: implement variantStock
    throw UnimplementedError();
  }
}
