import 'package:flipper_models/helperModels/random.dart';
import 'package:flipper_models/mocks.dart';
import 'package:flipper_services/app_service.dart';
import 'package:flipper_services/constants.dart';
import 'package:flipper_services/locator.dart';
import 'package:flipper_services/proxy.dart';

import 'package:flipper_models/realm_model_export.dart';
import 'package:realm/realm.dart';

/// there is a case we need to force some data to be added for a given user
/// this is the class to help with that.

class ForceDataEntryService {
  final appService = getIt<AppService>();
  void dataBootstrapper() {
    addData();
  }

  Future<void> addData() async {
    int? branchId = ProxyService.box.getBranchId();
    int? businessId = ProxyService.box.getBusinessId();

    if (branchId == null || businessId == null) {
      return;
    }

    List<Product> products =
        await ProxyService.realm.products(branchId: branchId);
    if (products.isEmpty) {
      await ProxyService.realm.createProduct(
          product: Product(ObjectId(),
              id: randomNumber(),
              name: "Custom Amount",
              action: 'create',
              lastTouched: DateTime.now(),
              businessId: businessId,
              color: "#e74c3c",
              branchId: branchId)
            ..name = "Custom Amount"
            ..color = "#e74c3c"
            ..branchId = branchId
            ..businessId = businessId);
    }
    final List<String> colors = [
      '#d63031',
      '#0984e3',
      '#e84393',
      '#2d3436',
      '#6c5ce7',
      '#74b9ff',
      '#ff7675',
      '#a29bfe'
    ];

    int branchid = ProxyService.box.getBranchId()!;
    List<PColor> kColors = await ProxyService.realm.colors(branchId: branchid);
    if (kColors.isEmpty) {
      final PColor color = PColor(ObjectId(),
          id: randomNumber(),
          colors: colors,
          branchId: branchId,
          lastTouched: DateTime.now(),
          action: AppActions.created,
          name: "#d63031",
          active: false);
      await ProxyService.realm.create<PColor>(data: color);
    }
    List<IUnit> kUnits = await ProxyService.realm.units(branchId: branchid);

    if (kUnits.isEmpty) {
      await ProxyService.realm.addUnits(units: mockUnits);
    }
  }
}
