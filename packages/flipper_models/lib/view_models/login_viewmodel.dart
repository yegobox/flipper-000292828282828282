import 'package:country_code_picker/country_code.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flipper/routes.locator.dart';
import 'package:flipper/routes.router.dart';
import 'package:flipper_models/models/login.dart';
import 'package:flipper_services/flipper_firebase_auth.dart';
import 'package:flipper_services/login_service.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginViewModel extends FormViewModel {
  LoginViewModel();
  final fb = locator<FlipperFirebaseAuthenticationService>();
  final lg = locator<LoginService>();
  void login({required BuildContext context}) {
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

  String? otp;
  void setOtp({required String ot}) {
    otp = ot;
  }

  String? verificationId;
  void setverificationId({required String code}) {
    verificationId = code;
  }

  @override
  void setFormStatus() {}

  Future<void> verifyWithOtp() async {
    print(phoneNumber);
    final credential = PhoneAuthProvider.credential(
      verificationId: verificationId!,
      smsCode: otp!,
    );
    final FirebaseAuth auth = FirebaseAuth.instance;
    await auth.signInWithCredential(credential);
    FirebaseAuth.instance.authStateChanges().listen((event) async {
      if (event != null) {
        Login login = await ProxyService.api.login(phone: phoneNumber!);
        if (login.synced == 1) {
          //then go startup logic
          ProxyService.nav.navigateTo(Routes.startUpView);
        } else {
          //call api to sync!
          await ProxyService.api.sync(userId: login.id.toString());
          //go startup logic
          ProxyService.nav.navigateTo(Routes.startUpView);
        }
      }
    });
  }
}
