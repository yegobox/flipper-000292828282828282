library flipper_models;

import 'package:flipper_models/models/product.dart';
import 'package:flipper_models/models/color.dart';
import 'package:stacked/stacked.dart';
import 'package:flipper_services/proxy.dart';

class ProductViewModel extends BaseViewModel {
  List<Product> _products = [];
  get products => _products;
  bool _isLocked = false;
  get isLocked => _isLocked;

  List<PColor> _colors = [];
  get colors => _colors;
  Product? _product;
  get product => _product;

  get color => null;

  Future<List<Product>> loadProducts() async {
    _products = await ProxyService.api.products();

    notifyListeners();
    return _products;
  }

  void createTemporalProduct() {}

  void setName({String? name}) {}

  void lock() {}

  void loadCategories() {}

  Future<void> loadColors() async {
    // _colors = await ProxyService.api.colors();
  }
}
