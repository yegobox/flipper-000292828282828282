import 'package:flipper_services/flipper_firebase_auth.dart';
import 'package:flipper_services/locator.dart';
import 'package:flipper_services/proxy.dart';
import 'package:stacked_firebase_auth/src/firebase_authentication_service.dart';

import 'authentication_viewmodel.dart';
import 'package:flipper_login/phone_number_view.form.dart';

class LoginViewModel extends AuthenticationViewModel {
  final _firebaseAuthenticationService =
      locator<FlipperFirebaseAuthenticationService>();
  final Function callback;
  LoginViewModel(this.callback) : super(successRoute: 'startupView');

  void navigateBack() => ProxyService.nav.back();

  @override
  Future<FirebaseAuthenticationResult> runAuthentication() {
    // TODO: implement runAuthentication
    throw UnimplementedError();
  }

  @override
  Future<void> runPhoneAuthentication() => _firebaseAuthenticationService
      .createAccountWithPhone(phone: phoneValue!, callback: callback);
}
