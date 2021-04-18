library flipper_models;

import 'package:flipper_models/models/product.dart';
import 'package:stacked/stacked.dart';
import 'package:flipper_services/proxy.dart';

class BusinessHomeViewModel extends BaseViewModel {
  // keypad service
  get keyPad => null;

  get keypadValue => null;

  void addKey(String s) {}

  // products methods
  Future<List<Product>> products() async {
    return await ProxyService.api.products();
  }
}
