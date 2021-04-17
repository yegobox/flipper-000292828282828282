import 'abstractions/db.dart';
// import 'abstractions/db.dart';

import 'package:flipper_models/models/business.dart';

import 'package:stacked/stacked.dart';

class LiteApi with ReactiveServiceMixin implements DB {
  @override
  List<Business> get() {
    // TODO: implement get
    throw UnimplementedError();
  }
}
