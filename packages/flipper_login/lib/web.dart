import 'package:flutter/material.dart';

class WeLogin extends StatelessWidget {
  const WeLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        color: Colors.black,
        height: 60,
      ),
      Container(
          color: Colors.teal,
          height: 200,
          child: Container(
            margin: const EdgeInsets.only(left: 100.0, top: 15),
            child: const ListTile(
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
            // ignore: prefer_const_constructors
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
                          const Text(
                            'To Use WhatsApp On Your Computer',
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            '1. Open WhatsApp on your phone',
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            '2. Tap Menu or Settings and select WhatsApp Web',
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            '3. Point your phone to this screen to capture the code',
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 80,
                          ),
                          GestureDetector(
                              child: const Text('Need help to get started? ',
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
                            'assets/qrcode.png',
                            height: 200,
                            width: 200,
                          ),
                          Container(
                            width: 200,
                            child: CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              title: const Text(
                                'Keep me signed in',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                              value: false,
                              onChanged: (value) {
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
                            child: const Center(
                                child: Text('Footer Image Section'))),
                      ],
                    ))
              ],
            ),
          ),
        ],
      )
    ]);
  }
}
