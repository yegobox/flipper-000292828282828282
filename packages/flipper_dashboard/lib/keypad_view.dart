library pos;

import 'package:fluent_ui/fluent_ui.dart';
import 'package:universal_platform/universal_platform.dart';

import 'package:flipper_models/models/view_models/business_home_viewmodel.dart';

final isWindows = UniversalPlatform.isWindows;
final isMacOs = UniversalPlatform.isMacOS;

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

class KeyPadView extends StatelessWidget {
  const KeyPadView({Key? key, required this.model}) : super(key: key);
  final BusinessHomeViewModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    model.addKey('1');
                  },
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: FluentTheme.of(context).accentColor,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '1',
                        textAlign: TextAlign.center,
                      )),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    model.addKey('2');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: FluentTheme.of(context).accentColor,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      '2',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    model.addKey('3');
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: FluentTheme.of(context).accentColor,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      '3',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    model.addKey('4');
                  },
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: FluentTheme.of(context).accentColor,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '4',
                        textAlign: TextAlign.center,
                      )),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    model.addKey('5');
                  },
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: FluentTheme.of(context).accentColor,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '5',
                        textAlign: TextAlign.center,
                      )),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    model.addKey('6');
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: FluentTheme.of(context).accentColor,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '6',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    model.addKey('7');
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: FluentTheme.of(context).accentColor,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      '7',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    model.addKey('8');
                  },
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: FluentTheme.of(context).accentColor,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '8',
                        textAlign: TextAlign.center,
                      )),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    model.addKey('9');
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: FluentTheme.of(context).accentColor,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      '9',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    model.addKey('C');
                  },
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: FluentTheme.of(context).accentColor,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'C',
                        textAlign: TextAlign.center,
                      )),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    model.addKey('0');
                  },
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: FluentTheme.of(context).accentColor,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '0',
                        textAlign: TextAlign.center,
                      )),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    model.addKey('+');
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: FluentTheme.of(context).accentColor,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      '+',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class KeyboardKey extends StatelessWidget {
  const KeyboardKey({
    Key? key,
    required this.model,
    this.keyValue,
  }) : super(key: key);
  final keyValue;
  final BusinessHomeViewModel model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: MediaQuery.of(context).size.height,
      child: GestureDetector(
        onTap: () => {model.addKey(keyValue)},
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromRGBO(0, 0, 0, 0.2),
              width: 0,
            ),
          ),
          child: Center(
            child: Text(
              keyValue,
            ),
          ),
        ),
      ),
    );
  }
}
