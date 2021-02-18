library pos;

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pos/payable/payable_view.dart';
import 'pos_viewmodel.dart';

class KeyPad extends StatelessWidget {
  const KeyPad({Key key, this.model}) : super(key: key);
  final PosViewModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).copyWith(canvasColor: Colors.white).canvasColor,
      body: SafeArea(
        child: Column(
          children: [
            Display(
              model: model,
            ),
            Keyboard(model: model)
          ],
        ),
      ),
    );
  }
}

class Display extends StatelessWidget {
  const Display({Key key, this.model}) : super(key: key);
  final PosViewModel model;

  @override
  Widget build(BuildContext context) {
    final views = <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: PayableView(model: model),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                'Frw ' + model.expression,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontFeatures: [
                    FontFeature.enable('sups'),
                  ],
                  fontSize: 40.0,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    ];

    return Container(
      // width: double.infinity,
      color: Theme.of(context)
          .copyWith(canvasColor: Colors.white)
          .canvasColor, //this can be set to a visible color, when designing
      padding: const EdgeInsets.all(0.0),
      child: Column(
        children: views,
      ),
    );
  }
}

class Keyboard extends StatelessWidget {
  const Keyboard({Key key, this.model}) : super(key: key);
  final PosViewModel model;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width * 0.3;
    final double height = (MediaQuery.of(context).size.height - 168) * 0.3;
    print(MediaQuery.of(context).size.height);
    return GridView.count(
      primary: true,
      shrinkWrap: true,
      crossAxisCount: 3,
      crossAxisSpacing: 0,
      mainAxisSpacing: 0,
      childAspectRatio: height / width,
      physics: const NeverScrollableScrollPhysics(),
      children: <String>[
        // @formatter:off
        '1', '2', '3',
        '4', '5', '6',
        '7', '8', '9',
        'C', '0', '+',
        // @formatter:on
      ].map((key) {
        return GridTile(
          child: KeyboardKey(key, model),
        );
      }).toList(),
    );
  }
}

class KeyboardKey extends StatelessWidget {
  const KeyboardKey(this._keyValue, this.model);
  final PosViewModel model;
  final _keyValue;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: false,
      onTap: () => {model.addKey(_keyValue)},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromRGBO(0, 0, 0, 0.1),
            width: 0.0,
          ),
        ),
        child: Center(
          child: Text(
            _keyValue,
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(fontSize: 40, fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }
}
