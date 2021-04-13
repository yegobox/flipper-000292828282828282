library flipper_login;

import 'package:flipper_login/web.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:firebase_core/firebase_core.dart';
import 'mobile.dart';

class LoginView extends StatelessWidget {
  final Future<bool> storage = GetStorage.init();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: (UniversalPlatform.isAndroid)
            ? Future.wait([Firebase.initializeApp(), storage])
            : Future.wait([storage]),
        builder: (context, snapshot) {
          return Scaffold(
            body: UniversalPlatform.isWeb ||
                    UniversalPlatform.isWindows ||
                    UniversalPlatform.isMacOS
                ? const WeLogin()
                : MobileLogin(),
          );
        });
  }
}
