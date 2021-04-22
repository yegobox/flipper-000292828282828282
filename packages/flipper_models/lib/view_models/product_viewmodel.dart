library flipper_models;

import 'package:flipper_models/models/product.dart';
import 'package:flipper_models/models/color.dart';
import 'package:flipper_models/models/unit.dart';
import 'package:flipper_models/models/product_mock.dart';
import 'package:flipper_models/models/category.dart';
import 'package:flipper_models/models/variant_stock.dart';
import 'package:stacked/stacked.dart';
import 'package:flipper_services/proxy.dart';

class ProductViewModel extends BaseViewModel {
  List<Product> _products = [];
  get products => _products;
  bool _isLocked = false;
  get isLocked => _isLocked;

  List<PColor> _colors = [];
  get colors => _colors;

  List<Unit> _units = [];
  get units => _units;

  List<Category> _categories = [];
  get categories => _categories;

  List<VariantStock> _variantStock = [];
  get variants => _variantStock;

  Product? _product;
  get product => _product;

  get color => null;

  Future<List<Product>> loadProducts() async {
    _products = await ProxyService.api.products();

    notifyListeners();
    return _products;
  }

  Future<String> createTemporalProduct() async {
    final List<Product> isTemp = await ProxyService.api.isTempProductExist();
    if (isTemp.isEmpty) {
      Product product =
          await ProxyService.api.createProduct(product: productMock);
      variantsProduct(productId: product.id);
      return product.id;
    }
    variantsProduct(productId: isTemp[0].id);
    return isTemp[0].id;
  }

  Future<List<VariantStock>> variantsProduct(
      {required String productId}) async {
    final String branchId = ProxyService.box.read(key: 'branchId');
    _variantStock = await ProxyService.api
        .variantProduct(branchId: branchId, productId: productId);
    notifyListeners();
    return _variantStock;
  }

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

  Future<void> loadUnits() async {
    String branchId = ProxyService.box.read(key: 'branchId');

    _units = await ProxyService.api.units(branchId: branchId);

    notifyListeners();
  }
}
