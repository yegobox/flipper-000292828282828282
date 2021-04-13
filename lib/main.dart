import 'dart:async';

import 'package:flipper/flipper_app.dart';
import 'package:flipper_login/colors.dart';
import 'package:flipper_services/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();

  runZonedGuarded<Future<void>>(() async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        systemNavigationBarColor: AppColors.flipperGreen,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    runApp(FlipperApp());
    // await PusherBeams.start(env['PUSHER_KEY']);
  }, (Object e, StackTrace s) async {
    // await FirebaseCrashlytics.instance.recordError(e, s);
  });
}
