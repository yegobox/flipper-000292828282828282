library flipper_models;

import 'package:flipper_models/models/product.dart';
import 'package:flipper_models/models/color.dart';
import 'package:flipper_models/models/category.dart';
import 'package:stacked/stacked.dart';
import 'package:flipper_services/proxy.dart';

class ProductViewModel extends BaseViewModel {
  List<Product> _products = [];
  get products => _products;
  bool _isLocked = false;
  get isLocked => _isLocked;

  List<PColor> _colors = [];
  get colors => _colors;

  List<Category> _categories = [];
  get categories => _categories;

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

  void loadCategories() async {
    String branchId = ProxyService.box.read(key: 'branchId');

    _categories = await ProxyService.api.categories(branchId: branchId);
    notifyListeners();
  }

  Future<void> loadColors() async {
    String branchId = ProxyService.box.read(key: 'branchId');

    _colors = await ProxyService.api.colors(branchId: branchId);
    notifyListeners();
  }
}
