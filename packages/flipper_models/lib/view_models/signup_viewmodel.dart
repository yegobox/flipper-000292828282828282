import 'package:stacked/stacked.dart';
import 'package:universal_platform/universal_platform.dart';

final isWindows = UniversalPlatform.isWindows;

class SignupViewModel extends BaseViewModel {
  late String? useStyle;
  get flipperUseStyle => useStyle;
  void registerLocation() async {
    // TODO:test on web. and does not work on mac and windows

    // Geolocator.getPositionStream().listen((Position position) {
    //   String p =
    //       (position.latitude.toString() + ', ' + position.longitude.toString());
    //   print(p);
    // });
  }

  void signup() {}
}
