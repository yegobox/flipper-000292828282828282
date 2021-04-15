import 'package:flipper_services/abstractions/platform.dart';
import 'package:flipper_services/flipper_firebase_auth.dart';
import 'package:flipper_services/login_service.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:universal_platform/universal_platform.dart';
import 'abstractions/api.dart';
import 'locator.dart';

final isWindows = UniversalPlatform.isWindows;

final Api _apiService = locator<Api>();
final LoginService _login = locator<LoginService>();
final NavigationService _nav = locator<NavigationService>();
final Platform _auth = locator<Platform>();

abstract class ProxyService {
  static Api get api => _apiService;
  static NavigationService get nav => _nav;
  static LoginService get login => _login;

  static Platform get auth => _auth;
}
