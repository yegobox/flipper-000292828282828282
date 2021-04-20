import 'dart:convert';

import 'package:flipper_models/models/business.dart';
import 'package:flipper_models/models/login.dart';
import 'package:flipper_models/models/product.dart';
import 'package:flipper_models/models/stock.dart';
import 'package:flipper_models/models/sync.dart';
import 'package:injectable/injectable.dart';
import 'package:get_storage/get_storage.dart';

import 'abstractions/api.dart';
import 'package:http/http.dart' as http;

class ExtendedClient extends http.BaseClient {
  final http.Client _inner;
  final box = GetStorage();
  // ignore: sort_constructors_first
  ExtendedClient(this._inner);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    String? token = box.read('bearerToken');
    String? userId = box.read('userId');
    // you may want to pickup the value from tshared preferences, like:
    // customValue = await LocalStorage.getStringItem('token');
    request.headers['Authorization'] = token == null ? '' : token;
    request.headers['userId'] = userId == null ? '' : userId;
    print(userId);
    print(token);
    return _inner.send(request);
  }
}

@lazySingleton
class HttpApi implements Api {
  ExtendedClient client = ExtendedClient(http.Client());
  // HttpApi();
  String flipperApi = "https://flipper.yegobox.com";
  String apihub = "https://apihub.yegobox.com";
  @override
  void cleanKeyPad() {
    // TODO: implement cleanKeyPad
  }

  @override
  void listenCategory() {
    // TODO: implement listenCategory
  }

  @override
  void listenColor() {
    // TODO: implement listenColor
  }

  @override
  void listenOrder() {
    // TODO: implement listenOrder
  }

  @override
  Future payroll() {
    // TODO: implement payroll
    throw UnimplementedError();
  }

  @override
  Future<Login> login({required String phone}) async {
    final response = await client
        .post(Uri.parse("$flipperApi/open-login"), body: {'phone': phone});
    return loginFromJson(response.body);
  }

  @override
  Future<Sync> authenticateWithOfflineDb({required String userId}) async {
    final response = await client.post(Uri.parse("$apihub/auth"),
        body: jsonEncode({'userId': userId}),
        headers: {'Content-Type': 'application/json'});
    //save the token in local storage.
    final box = GetStorage();

    box.write('bearerToken', syncFromJson(response.body).token);
    box.write('userId', syncFromJson(response.body).userId);
    return syncFromJson(response.body);
  }

  @override
  Future<List<Business>> businesses() async {
    final response = await client.get(Uri.parse("$apihub/api/businesses"));

    return businessFromJson(response.body);
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
  Future<List<Product>> products() async {
    final response = await client.get(Uri.parse("$apihub/api/products"));
    return productFromJson(response.body);
  }

  @override
  Future<List<Stock>> stocks({required String productId}) async {
    final response = await client
        .get(Uri.parse("$apihub/api/stocks-byProductId/$productId"));

    return stockFromJson(response.body);
  }
}
