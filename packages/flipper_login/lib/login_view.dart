library flipper_login;

import 'package:flipper_login/web.dart';
import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';

import 'mobile.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UniversalPlatform.isWeb ||
              UniversalPlatform.isWindows ||
              UniversalPlatform.isMacOS
          ? const WeLogin()
          : MobileLogin(),
    );
  }
}
