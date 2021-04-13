import 'package:firebase_core/firebase_core.dart';
import 'package:flipper/routes.router.dart';
import 'package:flipper_login/flipper_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';

class FlipperApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: FlipperThemeData.lightThemeData
          .copyWith(platform: TargetPlatform.android),
      darkTheme: FlipperThemeData.darkThemeData
          .copyWith(platform: TargetPlatform.android),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
