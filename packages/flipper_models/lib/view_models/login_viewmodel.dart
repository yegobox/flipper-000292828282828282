import 'package:country_code_picker/country_code.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flipper/routes.locator.dart';
import 'package:flipper/routes.router.dart';
import 'package:flipper_models/models/login.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flipper_services/abstractions/platform.dart';
import 'package:universal_platform/universal_platform.dart';

class LoginViewModel extends FormViewModel {
  LoginViewModel();
  final fb = locator<Platform>();
  void login({required BuildContext context}) {
    ProxyService.box.write(key: 'userPhone', value: dialCode + phoneNumber!);
    fb.createAccountWithPhone(phone: dialCode + phoneNumber!, context: context);
  }

  void navigateBack() => ProxyService.nav.back();

  String? phoneNumber;
  void setPhoneNumber({required String phone}) {
    phoneNumber = phone;
  }

  String dialCode = '+250';
  void setCountryIso({CountryCode? iso}) {
    dialCode = (iso != null ? iso.dialCode : '+250')!;
  }

  void setOtp({required String ot}) {
    ProxyService.box.write(key: 'otp', value: ot);
  }

  @override
  void setFormStatus() {}

  Future<void> verifyWithOtp() async {
    String phone = ProxyService.box.read(key: 'userPhone');
    String otp = ProxyService.box.read(key: 'otp');

    try {
      if (UniversalPlatform.isWeb) {
        fb.confirmOtpForWeb(otp: otp);
      } else {
        String verificationId = ProxyService.box.read(key: 'verificationId');
        final credential = PhoneAuthProvider.credential(
          verificationId: verificationId,
          smsCode: otp,
        );
        final FirebaseAuth auth = FirebaseAuth.instance;
        await auth.signInWithCredential(credential);
      }
    } catch (e) {}
    FirebaseAuth.instance.authStateChanges().listen((event) async {
      if (event != null) {
        print('got the user with web');
        Login login = await ProxyService.api.login(phone: phone);

        ///call api to sync! start by syncing
        ///so that we cover the case when a user synced and deleted app
        ///and come again in this case the API will have sync!
        await ProxyService.api
            .authenticateWithOfflineDb(userId: login.id.toString());

        //then go startup logic
        ProxyService.nav.navigateTo(Routes.startUpView);
        ProxyService.box.write(
            key: 'userId',
            value: login.id.toString()); //this mark that we are logged in

      }
    });
  }
}
