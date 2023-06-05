library flipper_models;

import 'dart:developer';

import 'package:flipper_models/isar_models.dart';
import 'package:flipper_services/locator.dart' as loc;
import 'package:flipper_services/proxy.dart';

import 'package:stacked/stacked.dart';
import 'package:flipper_services/app_service.dart';
import 'package:flipper_routing/app.locator.dart';
import 'package:flipper_routing/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final appService = loc.locator<AppService>();
  bool isBusinessSet = false;
  final _routerService = locator<RouterService>();

  Future<void> listenToAuthChange() async {}

  Future<void> runStartupLogic({
    required bool refreshCredentials,
  }) async {
    log("on startup..here");
    log(ProxyService.box.getBusinessId()?.toString() ?? "no BusinessId");
    try {
      /// an event should be trigered from mobile not desktop as desktop is anonmous and login() func might have been called.
      if (refreshCredentials) {
        await appService.isLoggedIn();
      }
      await appService.appInit();
      log("User rrr" + ProxyService.box.getUserId().toString());
      //if we reached this far then it means we have a default business/branch make sence to check drawer
      if (await ProxyService.isar
          .isDrawerOpen(cashierId: ProxyService.box.getBusinessId()!)) {
        if (ProxyService.box.getDefaultApp() == 2) {
          _routerService.navigateTo(SocialHomeViewRoute());
        } else {
          _routerService.navigateTo(FlipperAppRoute());
        }
        return;
      } else {
        if (ProxyService.box.getDefaultApp() == 2) {
          _routerService.navigateTo(SocialHomeViewRoute());
        } else {
          _routerService.navigateTo(DrawerScreenRoute(open: "open"));
        }
      }
    } catch (e, stackTrace) {
      if (e is LoginChoicesException) {
        _routerService.navigateTo(LoginChoicesRoute());
      } else if (e is SessionException || e is ErrorReadingFromYBServer) {
        _routerService.clearStackAndShow(LoginViewRoute());
      } else if (e is BusinessNotFoundException) {
        _routerService.navigateTo(SignUpViewRoute(countryNm: "Rwanda"));
      } else {
        print(stackTrace);
        ProxyService.isar.logOut();
        //remove startup view from the stack
        _routerService.clearStackAndShow(LoginViewRoute());
      }
    }
  }
}
