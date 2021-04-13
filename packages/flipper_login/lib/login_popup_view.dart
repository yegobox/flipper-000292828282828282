library flipper_login_popup;

import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

import './button_view.dart';

class LoginPopupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
                      child: const Text(
                        'Welcome to',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
                      child: const Text(
                        'Flipper',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
                      child: const Text(
                        'app',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                  ]),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Form(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      CountryCodePicker(
                        onChanged: null,
                        initialSelection: 'RW',
                        // ignore: prefer_const_literals_to_create_immutables
                        favorite: ['+250', 'RW'],
                        showCountryOnly: false,
                        showOnlyCountryWhenClosed: false,
                        alignLeft: false,
                      ),
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            hintText: '789078834',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: const Text(
                'After entering your phone number click verify to authenticate yourself! then wait up to 20seconds to get the OTP and proceed',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              child: ButtonView(
                'Verify',
                () {
                  Navigator.of(context).pop();
                  // ProxyService.api.webDesktopLogin(number: '78347');
                },
                Colors.white,
                Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
