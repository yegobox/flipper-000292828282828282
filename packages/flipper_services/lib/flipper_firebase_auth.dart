library flipper_services;

import 'package:flipper_services/proxy.dart';
import 'package:stacked_firebase_auth/src/firebase_authentication_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FlipperFirebaseAuthenticationService
    extends FirebaseAuthenticationService {
  verifyOtp({required String otpCode}) {}
  Future<void> createAccountWithPhone(
      {required String phone, required Function callback}) async {
    try {
      log?.d('phone:$phone');
      await firebaseAuth.verifyPhoneNumber(
          phoneNumber: 'number',
          codeSent: (verificationId, resendToken) async {
            //call nop and show another view with otp option
            ProxyService.nav.back();
            callback;
          },
          timeout: const Duration(seconds: 60),
          verificationCompleted: (phoneAuthCredential) {
            print(phoneAuthCredential.toString() + 'lets make this work');
          },
          verificationFailed: (exceptio) {
            print('${exceptio.message} + something is wrong');
          },
          codeAutoRetrievalTimeout: (verificationId) {});
      // ignore: nullable_type_in_catch_clause
    } on FirebaseAuthException catch (e) {
      log?.e('A firebase exception has occured. $e');
      FirebaseAuthenticationResult.error(
          errorMessage: getErrorMessageFromFirebaseException(e));
    } on Exception catch (e) {
      log?.e('A general exception has occured. $e');
      FirebaseAuthenticationResult.error(
          errorMessage:
              'We could not create your account at this time. Please try again.');
    }
  }
}
