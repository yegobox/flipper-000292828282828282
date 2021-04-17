import 'package:flipper_services/abstractions/platform.dart';
import 'package:flipper_services/login_service.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:universal_platform/universal_platform.dart';
import 'abstractions/api.dart';
import 'abstractions/location.dart';
import 'locator.dart';

final isWindows = UniversalPlatform.isWindows;

final Api _apiService = locator<Api>();
final LoginService _login = locator<LoginService>();
final NavigationService _nav = locator<NavigationService>();
final Platform _auth = locator<Platform>();
final FlipperLocation _location = locator<FlipperLocation>();

abstract class ProxyService {
  static Api get api => _apiService;
  static NavigationService get nav => _nav;
  static LoginService get login => _login;
  static FlipperLocation get location => _location;

  static Platform get auth => _auth;
}
