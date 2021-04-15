library flipper_services;

import 'package:stacked/stacked.dart';

import 'package:observable_ish/observable_ish.dart';

class LoginService with ReactiveServiceMixin {
  final RxValue<Map> login = RxValue<Map>({});

  void setLogin({required Map l}) {
    login.value = {};
    login.value = l;
  }
}
