library flipper_models;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flipper_models/isar_models.dart';
import 'package:flipper_services/locator.dart' as loc;
import 'package:flipper_services/proxy.dart';
import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';
import 'package:flipper_services/app_service.dart';
import 'package:flipper_routing/app.locator.dart';
import 'package:flipper_routing/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'gate.dart';

// final isWeb = UniversalPlatform.isWeb;

class StartupViewModel extends BaseViewModel {
  final appService = loc.locator<AppService>();
  final BuildContext context;
  bool isBusinessSet = false;
  final _routerService = locator<RouterService>();
  StartupViewModel({required this.context});
  Future<void> listenToAuthChange() async {}

  Future<void> runStartupLogic({
    required bool invokeLogin,
  }) async {
    LoginInfo().redirecting = true;
    // ProxyService.isarApi.logOut();
    try {
      /// an event should be trigered from mobile not desktop as desktop is anonmous and login() func might have been called.
      if (invokeLogin && !ProxyService.box.isAnonymous()) {
        User? user = FirebaseAuth.instance.currentUser;
        if (user != null && !appService.isLoggedIn()) {
          await ProxyService.isarApi.login(
            userPhone: user.phoneNumber ?? user.email!,
          );
        }
      }
      await appService.appInit();
      //if we reached this far then it means we have a default business/branch make sence to check drawer
      if (await ProxyService.isarApi
              .isDrawerOpen(cashierId: ProxyService.box.getBusinessId()!) ==
          null) {
        if (ProxyService.box.getDefaultApp() == 2) {
          _routerService.navigateTo(SocialHomeViewRoute());
        } else {
          _routerService.navigateTo(DrawerScreenRoute(open: "open"));
        }
        return;
      }
      LoginInfo().isLoggedIn = true;

      _routerService.replaceWith(FlipperAppRoute());

      /// if you want to test signup or any other route before landing to final destionation
      /// un comment the code below but do not forget after testing to comment back the code
      // GoRouter.of(context).push('/signup/Rwanda');
    } catch (e, stackTrace) {
      if (e is LoginChoicesException) {
        LoginInfo().isLoggedIn = false;
        LoginInfo().loginChoices = true;
        _routerService.replaceWith(LoginChoicesRoute());
      } else if (e is SessionException || e is ErrorReadingFromYBServer) {
        LoginInfo().isLoggedIn = false;
        _routerService.replaceWith(LoginViewRoute());
      } else if (e is BusinessNotFoundException) {
        _routerService.navigateTo(SignUpViewRoute(countryNm: "Rwanda"));
      } else {
        print(stackTrace);
        ProxyService.isarApi.logOut();
        LoginInfo().isLoggedIn = false;
        _routerService.replaceWith(LoginViewRoute());
      }
    }
  }
}
