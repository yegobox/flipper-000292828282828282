import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flipper/flipper_app.dart';
import 'package:flipper_login/colors.dart';
import 'package:flipper_services/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';

// cd android && ./gradlew signingReport
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); //comment it for windows
  await GetStorage.init();
  // done init in mobile.
  setupLocator();

  runZonedGuarded<Future<void>>(() async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        systemNavigationBarColor: AppColors.flipperMainColor,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    runApp(FlipperApp());
    // await PusherBeams.start(env['PUSHER_KEY']);
  }, (Object e, StackTrace s) async {
    // await FirebaseCrashlytics.instance.recordError(e, s);
  });
}
