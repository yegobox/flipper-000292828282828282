import 'package:flipper_services/proxy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flipper_models/models/login.dart';
import 'package:flipper/routes.router.dart';
import 'abstractions/api.dart';
import 'abstractions/location.dart';
import 'abstractions/platform.dart';
import 'abstractions/storage.dart';
import 'fake_api.dart';
import 'flipper_firebase_auth.dart';
import 'http_api.dart';
import 'local_storage.dart';
import 'location_service.dart';
import 'package:universal_platform/universal_platform.dart';

final isWindows = UniversalPlatform.isWindows;
// UniversalPlatform.platform;
enum ApiProvider {
  Fake,
  Rest,
  Lite,
}
final String platform = (!isWindows) ? 'mobile' : 'windows';

@module
abstract class ThirdPartyServicesModule {
  @lazySingleton
  Api get apiService {
    Api apiService;
    var choosenProvider =
        ApiProvider.Rest; // change this to change the provider
    switch (choosenProvider) {
      case ApiProvider.Fake:
        apiService = FakeApi();
        break;
      case ApiProvider.Rest:
        apiService = HttpApi();
        break;
      default:
        apiService = HttpApi();
    }
    return apiService;
  }

  // @lazySingleton
  // LoginViewModel get lView;

  @lazySingleton
  LoginStandard get flipperFire {
    LoginStandard service;
    switch (platform) {
      case "windows":
        service = WindowsFirebaseAuthenticationImplementation();
        break;
      default:
        service =
            FlipperFirebaseAuthenticationService(); //works on mobile and other device except windows
    }
    return service;
  }

  @lazySingleton
  FlipperLocation get location {
    FlipperLocation location;
    switch (platform) {
      case "windows":
        location = WindowsLocationService();
        break;
      default:
        location = LocationService();
    }
    return location;
  }

  @lazySingleton
  NavigationService get nav;
  @lazySingleton
  LocalStorage get box {
    LocalStorage box;
    switch (platform) {
      case "windows":
        box = LocalStorageImpl();
        break;
      default:
        box = LocalStorageImpl();
    }
    return box;
  }
}

class WindowsLocationService implements FlipperLocation {
  @override
  Future<Map<String, String>> getLocation() async {
    return {
      "longitude": "11",
      "latitude": "11"
    }; //for windows it is not supported then please use the default
  }

  @override
  Future<bool> doWeHaveLocationPermission() async {
    return false; //so we can return default.
  }
}

class WindowsFirebaseAuthenticationImplementation implements LoginStandard {
  @override
  Future<bool> createAccountWithPhone(
      {required String phone, required BuildContext context}) async {
    // implement custom SMS provider to send OTP
    //  ProxyService.box.write(key: 'verificationId', value: 'mock');
    ProxyService.box.write(key: 'userPhone', value: phone);
    return true; //fake login
  }

  @override
  signInWithApple(
      {required String appleClientId, required String appleRedirectUri}) {
    //fake the login for now
  }

  @override
  signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  confirmOtpForWeb({required String otp}) {
    // TODO: implement confirmOtpForWeb
    throw UnimplementedError();
  }

  @override
  Future<void> verifyWithOtp() async {
    String phone = ProxyService.box.read(key: 'userPhone');
    // String otp = ProxyService.box.read(key: 'otp');
    Login login = await ProxyService.api.login(phone: phone);

    ///call api to sync! start by syncing
    ///so that we cover the case when a user synced and deleted app
    ///and come again in this case the API will have sync!
    await ProxyService.api
        .authenticateWithOfflineDb(userId: login.id.toString());

    //then go startup logic
    ProxyService.nav.navigateTo(Routes.startUpView);
    ProxyService.box.write(key: 'userId', value: login.id.toString());
  }
}
