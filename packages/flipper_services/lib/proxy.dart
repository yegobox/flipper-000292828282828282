import 'package:flipper_services/flipper_firebase_auth.dart';
import 'package:flipper_services/login_service.dart';
import 'package:stacked_services/stacked_services.dart';

import 'abstractions/api.dart';
import 'locator.dart';

final Api _apiService = locator<Api>();
final LoginService _login = locator<LoginService>();
final NavigationService _nav = locator<NavigationService>();
final FlipperFirebaseAuthenticationService _auth =
    locator<FlipperFirebaseAuthenticationService>();

abstract class ProxyService {
  static Api get api => _apiService;
  static NavigationService get nav => _nav;
  static LoginService get login => _login;

  static FlipperFirebaseAuthenticationService get auth => _auth;
}
