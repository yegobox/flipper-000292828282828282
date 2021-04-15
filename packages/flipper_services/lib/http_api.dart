import 'package:flipper_models/models/business.dart';
import 'package:flipper_models/models/login.dart';
import 'package:flipper_models/models/sync.dart';
import 'package:injectable/injectable.dart';
import 'package:get_storage/get_storage.dart';

import 'abstractions/api.dart';
import 'package:http/http.dart' as http;

class ExtendedClient extends http.BaseClient {
  final http.Client _inner;

  // ignore: sort_constructors_first
  ExtendedClient(this._inner);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    const String customValue = '';
    // you may want to pickup the value from tshared preferences, like:
    // customValue = await LocalStorage.getStringItem('token');
    // request.headers['custom-header-here'] = customValue;
    return _inner.send(request);
  }
}

@lazySingleton
class HttpApi implements Api {
  ExtendedClient client = ExtendedClient(http.Client());
  String baseUri = "https://flipper.yegobox.com";
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
    final response = await client.post(
        Uri.parse("https://flipper.yegobox.com/open-login"),
        body: {'phone': phone});
    return loginFromJson(response.body);
  }

  @override
  Future<Sync> sync({required String userId}) async {
    final response = await client.post(
        Uri.parse("https://apihub.yegobox.com/auth"),
        body: {'userId': userId},
        headers: {'Content-Type': 'application/json'});
    //save the token in local storage.
    final box = GetStorage();
    box.write('bearerToken', syncFromJson(response.body).token);
    box.write('userId', syncFromJson(response.body).userId);
    return syncFromJson(response.body);
  }

  @override
  Future<List<Business>> canStart() async {
    final response = await client.get(Uri.parse("$baseUri/api/businesses"));
    return businessFromJson(response.body);
  }
}
