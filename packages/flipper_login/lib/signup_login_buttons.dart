import 'package:flutter/material.dart';

import 'login_popup_view.dart';

class SignUpLoginButton extends StatelessWidget {
  const SignUpLoginButton({Key? key, this.portrait = false}) : super(key: key);
  final bool portrait;

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) => LoginPopupView(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20.0)),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: FlatButton(
                  onPressed: () {
                    _showModalBottomSheet(context);
                  },
                  color: Colors.blue,
                  child: Text(
                    'Create Account',
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 20),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: OutlineButton(
                color: Colors.blue,
                child: Text(
                  'Sign in',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.blue),
                ),
                onPressed: () {
                  _showModalBottomSheet(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
