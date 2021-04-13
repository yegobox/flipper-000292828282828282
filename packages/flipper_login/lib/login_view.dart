library flipper_login;

import 'package:flutter/material.dart';

import 'mobile.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: UniversalPlatform.isWeb ? const WeLogin() : MobileLogin(),
      body: MobileLogin(),
    );
  }
}
