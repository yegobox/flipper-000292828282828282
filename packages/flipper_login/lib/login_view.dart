library flipper_login;

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:universal_platform/universal_platform.dart';

import './login_popup_view.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (UniversalPlatform.isWeb) {
      return Column(children: <Widget>[
        Container(
          color: Colors.black,
          height: 60,
        ),
        Container(
            color: Colors.teal,
            height: 200,
            child: Container(
              margin: EdgeInsets.only(left: 100.0, top: 15),
              child: ListTile(
                leading: Icon(
                  Icons.view_agenda,
                  size: 50,
                  color: Colors.white,
                ),
                title: Text(
                  'WHATSAPP WEB',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(200.00, 0.00, 200.00, 0.00),
              height: 500,
              color: Colors.white,
              transform: Matrix4.translationValues(0.0, -80.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "To Use WhatsApp On Your Computer",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "1. Open WhatsApp on your phone",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "2. Tap Menu or Settings and select WhatsApp Web",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "3. Point your phone to this screen to capture the code",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            GestureDetector(
                                child: Text("Need help to get started? ",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Colors.blue)),
                                onTap: () {
                                  print('Clicked');
                                })
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/qrcode.png",
                              height: 200,
                              width: 200,
                            ),
                            Container(
                              width: 200,
                              child: CheckboxListTile(
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                title: Text(
                                  'Keep me signed in',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                ),
                                value: false,
                                onChanged: (bool? value) {
                                  print('Checked');
                                },
                                activeColor: Colors.blue,
                                checkColor: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),

                  //In this section you can add the footer section
                  Container(
                    color: Colors.grey[400],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                          child: Center(
                              child: Text("Footer Image Section"))),
                    ],
                  ))
                ],
              ),
            ),
          ],
        )
      ]);
    } else {
      return Column(
        children: <Widget>[
          Container(
            color: Colors.blue[100],
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
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Flipper',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 26, color: Colors.blue[900]),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Interact and grow your bussiness',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      color: Colors.blue[900],
                      child: Text(
                        "Create Account",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      onPressed: () {},
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => LoginPopupView(),
                      );
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      onPressed: () {},
                    ),
                  )
                ]),
          ),
        ],
      );
    }
  }
}
