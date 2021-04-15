import 'package:country_code_picker/country_code.dart';
import 'package:flipper/routes.locator.dart';
import 'package:flipper_login/otp_view.dart';
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
    fb.createAccountWithPhone(phone: dialCode + phoneNumber!);
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

  @override
  void setFormStatus() {}
}
