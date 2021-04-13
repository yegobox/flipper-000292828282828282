import 'package:flipper_login/colors.dart';
import 'package:flipper_login/signup_login_buttons.dart';
import 'package:flutter/material.dart';

import 'login_popup_view.dart';

class MobileLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: AppColors.mainColor,
          width: double.infinity,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/fliper-logo.png',
                width: 80,
                height: 80,
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                'Flipper',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26, color: AppColors.textWhiteColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Interact and grow your bussiness',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: AppColors.textWhiteColor),
              ),
            ],
          ),
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SignUpLoginButton(),
        ),
      ],
    );
  }
}
