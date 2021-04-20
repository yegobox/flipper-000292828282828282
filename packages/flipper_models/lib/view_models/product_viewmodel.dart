library flipper_models;

import 'package:flipper_models/models/product.dart';
import 'package:stacked/stacked.dart';
import 'package:flipper_services/proxy.dart';

class ProductViewModel extends BaseViewModel {
  List<Product> _products = [];
  get products => _products;
  bool _isLocked = false;
  get isLocked => _isLocked;

  Future<List<Product>> loadProducts() async {
    _products = await ProxyService.api.products();

    notifyListeners();
    return _products;
  }

  void createTemporalProduct() {}
}
