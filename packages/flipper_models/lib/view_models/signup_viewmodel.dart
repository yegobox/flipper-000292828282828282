import 'package:stacked/stacked.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:flipper_services/proxy.dart';

final isWindows = UniversalPlatform.isWindows;

class SignupViewModel extends BaseViewModel {
  late String? useStyle;
  get flipperUseStyle => useStyle;
  late String? longitude;
  late String? latitude;

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

  void signup() {}
}
