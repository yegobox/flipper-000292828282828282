library flipper_models;

import 'package:flipper_routing/routes.locator.dart';
import 'package:flipper_routing/routes.logger.dart';
import 'package:flipper_models/isar_models.dart';
import 'package:flipper_services/proxy.dart';
import 'package:stacked/stacked.dart';
import 'package:flipper_services/app_service.dart';
import 'package:universal_platform/universal_platform.dart';

import 'gate.dart';

final isWeb = UniversalPlatform.isWeb;

class StartUpViewModel extends BaseViewModel {
  final appService = locator<AppService>();
  bool isBusinessSet = false;
  final log = getLogger('StartUpViewModel');

  Future<void> runStartupLogic({
    required bool invokeLogin,
    required LoginInfo loginInfo,
    required Function navigationCallback,
  }) async {
    loginInfo.redirecting = true;

    try {
      await appService.appInit();
      loginInfo.isLoggedIn = true;
      navigationCallback("home");
      // we are logged in but there is a chance that this number is a tenant
      // that is given access to this business's branch
      // TODOtenant's is not useful when sync is not supported.
    } catch (e) {
      if (e is SessionException) {
        log.e("session expired");
        loginInfo.isLoggedIn = false;
        loginInfo.redirecting = false;
        ProxyService.isarApi.logOut();
        navigationCallback("login");
        rethrow;
      } else if (e is NotFoundException) {
        String? countryName = await ProxyService.country.getCountryName();
        loginInfo.country = countryName!;
        loginInfo.isLoggedIn = false;
        loginInfo.redirecting = false;
        loginInfo.needSignUp = true;
        rethrow;
      } else if (e is NoDrawerOpen) {
        navigationCallback("needOpenDrawer");
        rethrow;
      } else if (e is ErrorReadingFromYBServer) {
        loginInfo.isLoggedIn = false;
        navigationCallback("login");
        rethrow;
      } else if (e is BranchLoadingException) {
        log.i('failed to load the branch');
        ProxyService.isarApi.logOut();
        loginInfo.isLoggedIn = false;
        navigationCallback("login");
        rethrow;
      } else {
        log.i(e.toString());
        loginInfo.isLoggedIn = false;
        navigationCallback("login");
        rethrow;
      }
    }
  }
}
