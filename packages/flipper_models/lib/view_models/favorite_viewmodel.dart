import 'package:stacked/stacked.dart';
import 'package:flipper_models/isar/random.dart';
import 'package:flipper_models/isar/utils.dart';
import 'package:flipper_models/isar_models.dart';
import 'package:flipper_routing/app.router.dart';
import 'package:flutter/cupertino.dart';

import 'package:flipper_services/proxy.dart';
import 'package:flipper_services/locator.dart' as loc;
import 'package:flipper_services/app_service.dart';
import 'package:flipper_services/product_service.dart';
import 'package:flipper_routing/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flipper_services/constants.dart';
import 'package:flipper_models/hlc.dart';

class FavoriteViewModel extends ProductViewModel {
  // extends ReactiveViewModel
  final AppService app = loc.locator<AppService>();
  // ignore: annotate_overrides, overridden_fields
  final ProductService productService = loc.locator<ProductService>();
  final _routerService = locator<RouterService>();

  List<PColor> get colors => app.colors;

  List<IUnit> get units => app.units;

  get categories => app.categories;

  get product => productService.product;

  String? _productName;
  get productName => _productName;

  List<Variant>? get variants => productService.variants;

  Stream<String> getBarCode() async* {
    yield productService.barCode;
  }

  bool? inUpdateProcess;

  Future<List<Favorite>> getFavorites() async {
    List<Favorite> res = await ProxyService.isarApi.getFavorites();
    return res;
  }

  Future<int> deleteFavorite(int favId) async {
    int res = await ProxyService.isarApi.deleteFavorite(favId: favId);
    notifyListeners();
    ProxyService.appService.pushDataToServer();
    return res;
  }

  Future<Favorite?> getFavoriteById(int favId) async {
    Favorite? res = await ProxyService.isarApi.getFavoriteById(favId: favId);
    return res;
  }

  Future<Favorite?> getFavoriteByIndex(int favIndex) async {
    Favorite? res = await ProxyService.isarApi.getFavoriteByIndex(favIndex: favIndex);
    return res;
  }
}
