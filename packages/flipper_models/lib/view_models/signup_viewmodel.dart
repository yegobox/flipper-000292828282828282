import 'package:stacked/stacked.dart';
import 'package:geolocator/geolocator.dart';
import 'package:universal_platform/universal_platform.dart';

final isWindows = UniversalPlatform.isWindows;

class SignupViewModel extends BaseViewModel {
  late String? useStyle;
  get flipperUseStyle => useStyle;
  void registerLocation() async {
    // TODO:test on web. and does not work on mac and windows
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      await Geolocator.openLocationSettings();
      return;
    }
    LocationPermission req = await Geolocator.requestPermission();
    await Geolocator.getLastKnownPosition().then((value) {
      print(value.toString());
    });
    // Geolocator.getPositionStream().listen((Position position) {
    //   String p =
    //       (position.latitude.toString() + ', ' + position.longitude.toString());
    //   print(p);
    // });
  }

  void signup() {}
}
