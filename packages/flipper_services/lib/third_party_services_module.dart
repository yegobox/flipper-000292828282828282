import 'package:flipper_services/flipper_navigation_service.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

import 'abstractions/api.dart';
import 'fake_api.dart';
import 'flipper_firebase_auth.dart';
import 'http_api.dart';

enum ApiProvider {
  Fake,
  Rest,
  Lite,
}

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
  FlipperFirebaseAuthenticationService get flipperFire;
  // @lazySingleton
  // FlipperNavigationService get nav;
  @lazySingleton
  NavigationService get nav;
}
