import 'package:flipper/flipper_app.dart';
import 'package:flipper_login/login_view.dart';
// import 'package:flipper/locator.dart';
import 'package:flutter/material.dart';

void main() {
  // setupLocator();
  runApp(FlipperApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, toggleableActiveColor: Colors.green),
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: LoginView(),
      ),
    );
  }
}
