import 'package:firebase_auth/firebase_auth.dart';
import 'package:flipper_services/proxy.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flipper_services/locator.dart';

abstract class AuthenticationViewModel extends FormViewModel {
  final navigationService = locator<NavigationService>();

  final firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  final String successRoute;
  AuthenticationViewModel({required this.successRoute});

  @override
  void setFormStatus() {}

  Future<FirebaseAuthenticationResult> runAuthentication();

  Future saveData() async {
    // FirebaseAuthenticationResult? result =
    //     await runBusyFuture(runAuthentication());
    // _handleAuthenticationResponse(result);
  }

  Future<void> useGoogleAuthentication() async {
    final result = await firebaseAuthenticationService.signInWithGoogle();
    _handleAuthenticationResponse(authResult: result);
  }

  // final PhoneCodeSent smsOTPSent = (String verId, [int forceCodeResend]) {
  //     store.dispatch(OtpCode(otpcode: verId));
  //     _showModalBottomSheet(context, number);
  //   };

  Future<void> usePhoneAuthentication() async {
    final smsOTPSent = (verificationId, resendToken) {};
    await firebaseAuthenticationService.firebaseAuth.verifyPhoneNumber(
        phoneNumber: 'number',
        codeSent: (verificationId, resendToken) async {},
        timeout: const Duration(seconds: 60),
        verificationCompleted: (phoneAuthCredential) {
          print(phoneAuthCredential.toString() + 'lets make this work');
        },
        verificationFailed: (exceptio) {
          print('${exceptio.message} + something is wrong');
        },
        codeAutoRetrievalTimeout: (verificationId) {});
  }

  Future<void> useAppleAuthentication() async {
    final result = await firebaseAuthenticationService.signInWithApple(
      appleClientId: '',
      appleRedirectUri:
          'https://boxtout-production.firebaseapp.com/__/auth/handler',
    );
    _handleAuthenticationResponse(authResult: result);
  }

  /// Checks if the result has an error. If it doesn't we navigate to the success view
  /// else we show the friendly validation message.
  void _handleAuthenticationResponse(
      {FirebaseAuthenticationResult? authResult, String type = 'defaut'}) {
    if (type == 'phone') {
      // navigationService.pop();
      //now show another model for otp
      ProxyService.nav.pop();
      return;
    }
    if (!authResult!.hasError) {
      // navigate to success route
      navigationService.replaceWith(successRoute);
    } else {
      setValidationMessage(authResult.errorMessage);
      notifyListeners();
    }
  }
}
