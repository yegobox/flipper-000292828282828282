import 'package:stacked/stacked.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:flipper_services/proxy.dart';

final isWindows = UniversalPlatform.isWindows;

class SignupViewModel extends BaseViewModel {
  late String? useStyle;
  get flipperUseStyle => useStyle;
  void registerLocation() async {
    final location = ProxyService.location.getLocation();
    print(location);
  }

  void signup() {}
}
