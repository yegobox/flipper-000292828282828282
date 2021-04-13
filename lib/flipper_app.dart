import 'package:flipper/routes.gr.dart';
import 'package:flipper_login/flipper_theme_data.dart';
import 'package:flutter/material.dart';

class FlipperApp extends StatelessWidget {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.system,
      theme: FlipperThemeData.lightThemeData
          .copyWith(platform: TargetPlatform.android),
      darkTheme: FlipperThemeData.darkThemeData
          .copyWith(platform: TargetPlatform.android),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
