import 'package:stacked/stacked.dart';

import 'package:flipper_models/models/category.dart';
import 'package:flipper_models/models/color.dart';
import 'package:flipper_models/models/unit.dart';
import 'proxy.dart';

class AppService with ReactiveServiceMixin {
  // final _postCount = ReactiveValue<int>(0);
  // int get postCount => _postCount.value;

  // void updatePostCount() => _postCount.value++;

  // void resetCount() => _postCount.value = 0;

  // InformationService() {
  //   listenToReactiveValues([_postCount]);
  // }
  final _categories = ReactiveValue<List<Category>>([]);
  List<Category> get categories => _categories.value;

  final _units = ReactiveValue<List<Unit>>([]);
  List<Unit> get units => _units.value;

  final _colors = ReactiveValue<List<PColor>>([]);
  List<PColor> get colors => _colors.value;

  void loadCategories() async {
    String branchId = ProxyService.box.read(key: 'branchId');

    final List<Category> result =
        await ProxyService.api.categories(branchId: branchId);

    _categories.value = result;
    notifyListeners();
  }

  Future<void> loadUnits() async {
    String branchId = ProxyService.box.read(key: 'branchId');

    _units.value = await ProxyService.api.units(branchId: branchId);
  }

  Future<void> loadColors() async {
    String branchId = ProxyService.box.read(key: 'branchId');

    _colors.value = await ProxyService.api.colors(branchId: branchId);
  }

  AppService() {
    listenToReactiveValues([_categories]);
  }
}
