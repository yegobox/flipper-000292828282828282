library flipper_services;

// import 'package:flipper_services/proxy.dart';
import 'package:flipper_services/locator.dart';
import 'package:flipper_services/login_service.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:stacked_firebase_auth/src/firebase_authentication_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flipper_login/otp_view.dart';
import 'package:universal_platform/universal_platform.dart';

import 'abstractions/platform.dart';

class FlipperFirebaseAuthenticationService extends FirebaseAuthenticationService
    implements Platform {
  verifyOtp({required String otpCode}) {}
  final lg = locator<LoginService>();
  final box = GetStorage();
  ConfirmationResult? confirmationResult;

  @override
  Future<void> createAccountWithPhone(
      {required String phone, required BuildContext context}) async {
    try {
      if (!UniversalPlatform.isWeb) {
        await firebaseAuth.verifyPhoneNumber(
            phoneNumber: phone,
            codeSent: (verificationId, resendToken) async {
              ProxyService.nav.back();
              box.write('verificationId', verificationId);
              box.write('resendToken', resendToken);

              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 0),
                    child: Container(
                      child: OtpView(),
                      height: 400,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            timeout: const Duration(seconds: 60),
            verificationCompleted: (phoneAuthCredential) {
              print(phoneAuthCredential.toString() + 'lets make this work');
            },
            verificationFailed: (exceptio) {
              print('${exceptio.message} + something is wrong');
            },
            codeAutoRetrievalTimeout: (verificationId) {});
      } else {
        // print('we are using web thing22::' + phone);
        confirmationResult = await firebaseAuth.signInWithPhoneNumber(phone);
        ProxyService.nav.back();
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return Padding(
              padding: EdgeInsets.only(bottom: 0),
              child: Container(
                child: OtpView(),
                height: 400,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
            );
          },
        );
      }

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

  @override
  confirmOtpForWeb({required String otp}) async {
    print('now verifying');
    await confirmationResult!.confirm(otp);
  }
}
