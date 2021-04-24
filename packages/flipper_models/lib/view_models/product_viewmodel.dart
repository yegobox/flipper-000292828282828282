library flipper_models;

import 'package:flipper_models/models/product.dart';
import 'package:flipper_models/models/color.dart';
import 'package:flipper_models/models/unit.dart';
import 'package:flipper_models/models/product_mock.dart';
import 'package:flipper_models/models/variant_stock.dart';
import 'package:stacked/stacked.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flipper_services/locator.dart';
import 'package:flipper_services/app_service.dart';

class ProductViewModel extends ReactiveViewModel {
  final AppService _appService = locator<AppService>();
  List<Product> _products = [];
  get products => _products;
  bool _isLocked = false;
  get isLocked => _isLocked;

  List<PColor> get colors => _appService.colors;

  List<Unit> get units => _appService.units;

  get categories => _appService.categories;

  List<VariantStock> _variantStock = [];
  get variants => _variantStock;

  Product? _product;
  get product => _product;
  String? _name;
  get name => _name;

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

  void setName({String? name}) {
    _name = name;
  }

  void lock() {}

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_appService];

  void loadCategories() {
    _appService.loadCategories();
  }

  void loadUnits() {
    _appService.loadUnits();
  }

  void loadColors() {
    _appService.loadColors();
  }
}
