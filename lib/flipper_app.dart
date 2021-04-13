import 'package:flipper/routes.router.dart';
import 'package:flipper_login/flipper_theme_data.dart';
import 'package:flutter/material.dart';

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
