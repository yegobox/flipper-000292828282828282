import 'dart:ui';

import 'package:flipper/routes.router.dart';
import 'package:flipper_models/models/business.dart';
import 'package:flipper_models/models/branch.dart';
import 'package:flipper_models/models/category.dart';
import 'package:stacked/stacked.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flipper_login/signup_form_view.form.dart';

final isWindows = UniversalPlatform.isWindows;

class SignupViewModel extends FormViewModel {
  String? businessType = 'business';

  void setBuinessType({required String type}) {
    businessType = type;
    notifyListeners();
  }

  late String? longitude;
  late String? latitude;

  String? _name;
  void setName({required String name}) {
    _name = name;
  }

  String? _country;
  void setCountry({required String country}) {
    _country = country;
  }

  String? _type;
  void setType({required String type}) {
    _type = type;
  }

  void registerLocation() async {
    final permission = await ProxyService.location.doWeHaveLocationPermission();
    if (permission) {
      final Map<String, String> location =
          await ProxyService.location.getLocation();
      longitude = location['longitude'];
      latitude = location['latitude'];

      notifyListeners();
    } else {
      final Map<String, String> location =
          await ProxyService.location.getLocation();
      longitude = location['longitude'];
      latitude = location['latitude'];
      notifyListeners();
    }
  }

  void signup({Locale? locale}) async {
    int okStatus = await ProxyService.api.signup(business: {
      'name': nameValue,
      'latitude': latitude,
      'longitude': longitude,
      'currency': 'RW',
      'userId': ProxyService.box.read(key: 'userId'),
      'type': businessType,
      // ignore: todo
      //TODO: right now I am not sure locale!.countryCode can be reliable as sometime it need to test it on real-device
      'country': 'RW'
    });
    if (okStatus == 200) {
      //get businesses's id then look for related branch [0] create the default category
      List<Business> businesses = await ProxyService.api.businesses();
      List<Branch> branches =
          await ProxyService.api.branches(businessId: businesses[0].id);
      final String userId = ProxyService.box.read(key: 'userId');
      final Category category = new Category(
        active: true,
        focused: true,
        name: 'NONE',
        channels: [userId],
        branchId: branches[0].id,
      );
      await ProxyService.api.create<Category>(data: category);
      ProxyService.nav.navigateTo(Routes.businessHomeView);
    }
  }

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }
}
