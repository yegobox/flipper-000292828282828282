import 'package:flipper_services/flipper_firebase_auth.dart';
import 'package:flipper_services/flipper_navigation_service.dart';

import 'abstractions/api.dart';
import 'locator.dart';

final Api _apiService = locator<Api>();
final FlipperNavigationService _nav = locator<FlipperNavigationService>();
final FlipperFirebaseAuthenticationService _auth =
    locator<FlipperFirebaseAuthenticationService>();

abstract class ProxyService {
  static Api get api => _apiService;
  static FlipperNavigationService get nav => _nav;
  static FlipperFirebaseAuthenticationService get auth => _auth;
}
