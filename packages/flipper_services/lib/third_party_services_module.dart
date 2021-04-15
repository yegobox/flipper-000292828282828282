import 'package:flutter/src/widgets/framework.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

import 'abstractions/api.dart';
import 'abstractions/platform.dart';
import 'fake_api.dart';
import 'flipper_firebase_auth.dart';
import 'http_api.dart';
import 'login_service.dart';
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

  @lazySingleton
  Platform get flipperFire {
    Platform service;
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
  NavigationService get nav;
  @lazySingleton
  LoginService get login;
}

class WindowsFirebaseAuthenticationImplementation implements Platform {
  @override
  Future<void> createAccountWithPhone(
      {required String phone, required BuildContext context}) {
    // TODO: implement createAccountWithPhone
    throw UnimplementedError();
  }

  @override
  signInWithApple(
      {required String appleClientId, required String appleRedirectUri}) {
    // TODO: implement signInWithApple
    throw UnimplementedError();
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
}
