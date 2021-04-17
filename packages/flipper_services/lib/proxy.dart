import 'package:flipper_services/abstractions/platform.dart';
import 'package:flipper_services/local_storage.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:universal_platform/universal_platform.dart';
import 'abstractions/api.dart';
import 'abstractions/db.dart';
import 'abstractions/location.dart';
import 'abstractions/storage.dart';
import 'locator.dart';

import 'package:flipper_models/models/business.dart';

final isWindows = UniversalPlatform.isWindows;

final Api _apiService = locator<Api>();
final NavigationService _nav = locator<NavigationService>();
final Platform _auth = locator<Platform>();
final FlipperLocation _location = locator<FlipperLocation>();
final DB<Business> _db = locator<DB<Business>>();
final LocalStorage _box = locator<LocalStorage>();

abstract class ProxyService {
  static Api get api => _apiService;
  static NavigationService get nav => _nav;
  static FlipperLocation get location => _location;
  static LocalStorage get box => _box;
  static Platform get auth => _auth;
}
