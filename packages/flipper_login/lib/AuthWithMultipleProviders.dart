import 'dart:async';
import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flipper_login/apple_logo_painter.dart';
import 'package:flipper_routing/app.router.dart';
import 'package:flipper_services/constants.dart';
import 'package:flipper_ui/style_widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flipper_routing/app.locator.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

const _appleIconSizeScale = 28 / 44;

class Auth extends StatefulWidget {
  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  final _routerService = locator<RouterService>();

  final _authController = AuthController();

  bool isAddingUser = false;

  @override
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/flipper_logo.png',
                  package: 'flipper_login',
                ),
                SizedBox(height: screenHeight * 0.1),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "How would you like to proceed?",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: screenHeight * 0.1),
                SizedBox(
                  width: 368,
                  height: 68,
                  child: OutlinedButton(
                    key: Key("phoneNumberLogin"),
                    style: primaryButtonStyle.copyWith(
                      side: WidgetStateProperty.resolveWith((states) =>
                          const BorderSide(color: Color(0xff006AFE))),
                      shape: WidgetStateProperty.resolveWith<OutlinedBorder>(
                        (states) => RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    onPressed: () async {
                      setState(() {
                        isAddingUser = true;
                      });
                      _routerService.clearStackAndShow(CountryPickerRoute());
                    },
                    child: Text(
                      "Phone Number",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   width: 368,
                //   height: 68,
                //   child: OAuthProviderButton(
                //     variant: OAuthButtonVariant.icon,
                //     provider:
                //         GoogleProvider(clientId: _googleClientId, scopes: [
                //       ga.DriveApi.driveFileScope,
                //       ga.DriveApi.driveMetadataScope,
                //       ga.DriveApi.driveAppdataScope,
                //       ga.DriveApi.driveScope
                //     ]),
                //   ),
                // ),
                SizedBox(height: screenHeight * 0.02),
                AuthButton(
                  key: Key("googleLogin"),
                  onPressed: () async {
                    try {
                      setState(() {
                        isAddingUser = true;
                      });
                      final provider = GoogleAuthProvider();
                      final user = await FirebaseAuth.instance
                          .signInWithProvider(provider);
                      if (user.user != null) {
                        _authController.notifySignedIn();
                        _routerService.clearStackAndShow(
                            StartUpViewRoute(invokeLogin: true));
                      }
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'popup-closed-by-user' ||
                          e.code == 'canceled' ||
                          e.code == 'web-context-canceled') {
                        // User canceled the operation, return null or handle accordingly
                        return null;
                      } else {
                        // Handle other FirebaseAuthExceptions
                        Sentry.captureException(e,
                            stackTrace: StackTrace.current);
                        setState(() {
                          isAddingUser = false;
                        });
                        showSimpleNotification(
                          Text("Error happened"),
                          background: Colors.red,
                          position: NotificationPosition.bottom,
                        );
                      }
                    } catch (e) {
                      Sentry.captureException(e,
                          stackTrace: StackTrace.current);
                      setState(() {
                        isAddingUser = false;
                      });
                      showSimpleNotification(
                        Text("Error happened"),
                        background: Colors.red,
                        position: NotificationPosition.bottom,
                      );
                    }
                  },
                  iconPath: 'assets/google.svg',
                ),
                Container(
                  width: _appleIconSizeScale * 44,
                  height: _appleIconSizeScale * 44 + 2,
                  padding: EdgeInsets.only(
                    // Properly aligns the Apple icon with the text of the button
                    bottom: (4 / 44) * 44,
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        // Add your onTap functionality here
                      },
                      child: SizedBox(
                        width: (44 * 0.43) * (25 / 31),
                        height: (44 * 0.43),
                        child: CustomPaint(
                          painter: AppleLogoPainter(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //  FlipperButton(
                //   text: "Sign in with apple",
                //   key: Key("googleLogin"),
                //   onPressed: () async {
                //     try {
                //       setState(() {
                //         isAddingUser = true;
                //       });
                //       final provider = AppleAuthProvider();
                //       final user = await FirebaseAuth.instance
                //           .signInWithProvider(provider);
                //       if (user.user != null) {
                //         _authController.notifySignedIn();
                //         _routerService.clearStackAndShow(
                //             StartUpViewRoute(invokeLogin: true));
                //       }
                //     } on FirebaseAuthException catch (e) {
                //       if (e.code == 'popup-closed-by-user' ||
                //           e.code == 'canceled' ||
                //           e.code == 'web-context-canceled') {
                //         // User canceled the operation, return null or handle accordingly
                //         return null;
                //       } else {
                //         // Handle other FirebaseAuthExceptions
                //         Sentry.captureException(e,
                //             stackTrace: StackTrace.current);
                //         setState(() {
                //           isAddingUser = false;
                //         });
                //         showSimpleNotification(
                //           Text("Error happened"),
                //           background: Colors.red,
                //           position: NotificationPosition.bottom,
                //         );
                //       }
                //     } catch (e) {
                //       Sentry.captureException(e,
                //           stackTrace: StackTrace.current);
                //       setState(() {
                //         isAddingUser = false;
                //       });
                //       showSimpleNotification(
                //         Text("Error happened"),
                //         background: Colors.red,
                //         position: NotificationPosition.bottom,
                //       );
                //     }
                //   },
                //  color: Colors.black,
                // ),
                SizedBox(height: screenHeight * 0.02),
                AuthButton(
                  key: Key("microsoftLogin"),
                  onPressed: () async {
                    try {
                      log('microsoft');
                      setState(() {
                        isAddingUser = true;
                      });
                      final provider = MicrosoftAuthProvider();
                      provider.addScope('mail.read');
                      log(FirebaseAuth.instance.currentUser?.uid ?? "None",
                          name: "microsoft");

                      final user = await FirebaseAuth.instance
                          .signInWithProvider(provider);
                      if (user.user != null) {
                        _authController.notifySignedIn();
                        _routerService.clearStackAndShow(
                            StartUpViewRoute(invokeLogin: true));
                      }
                    } catch (e) {
                      // ProxyService.local.logOut();
                      Sentry.captureException(e,
                          stackTrace: StackTrace.current);
                      setState(() {
                        isAddingUser = false;
                      });
                      showSimpleNotification(
                        Text("Error happened"),
                        background: Colors.red,
                        position: NotificationPosition.bottom,
                      );
                    }
                  },
                  iconPath: 'assets/microsoft.svg',
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 368,
                  height: 68,
                  child: OutlinedButton(
                    key: Key('pinLogin'),
                    child: Text(
                      'PIN Login',
                      style: TextStyle(color: Color(0xff006AFE)),
                    ),
                    style: ButtonStyle(
                      shape: WidgetStateProperty.resolveWith<OutlinedBorder>(
                          (states) => RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4))),
                      side: WidgetStateProperty.resolveWith<BorderSide>(
                        (states) => BorderSide(
                          color: const Color(0xff006AFE).withOpacity(0.1),
                        ),
                      ),
                      backgroundColor: WidgetStateProperty.all<Color>(
                          const Color(0xff006AFE).withOpacity(0.1)),
                      overlayColor: WidgetStateProperty.resolveWith<Color?>(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.hovered)) {
                            return Color(0xff006AFE).withOpacity(0.5);
                          }
                          if (states.contains(WidgetState.focused) ||
                              states.contains(WidgetState.pressed)) {
                            return Color(0xff006AFE).withOpacity(0.5);
                          }
                          return Color(0xff006AFE).withOpacity(0.5);
                        },
                      ),
                    ),
                    onPressed: () {
                      _routerService.navigateTo(PinLoginRoute());
                    },
                  ),
                )
              ],
            ),
            if (isAddingUser)
              LoadingAnimationWidget.fallingDot(
                color: Colors.blueGrey,
                size: 100,
              ),
          ],
        ),
      ),
    );
  }
}

class AuthButton extends StatelessWidget {
  const AuthButton({
    Key? key,
    required this.onPressed,
    required this.iconPath,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 368,
      height: 68,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(4),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(
            iconPath,
            package: 'flipper_login',
          ),
          style: primaryButtonStyle.copyWith(
            backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
            side: WidgetStateProperty.resolveWith<BorderSide>(
              (states) => BorderSide(
                color: Colors.grey.withOpacity(.1),
              ),
            ),
            shape: WidgetStateProperty.resolveWith<OutlinedBorder>(
              (states) => RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AuthController {
  final _authStateChanged = StreamController<AuthState>();

  Stream<AuthState> get authStateChanged => _authStateChanged.stream;

  void notifySignedIn() {
    // _authStateChanged.add(SignedIn());
  }

  void notifySignedOut() {
    // _authStateChanged.add(SignedOut());
  }

  void dispose() {
    _authStateChanged.close();
  }
}

abstract class AuthState {}