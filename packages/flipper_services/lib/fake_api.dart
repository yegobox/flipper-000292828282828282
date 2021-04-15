import 'package:flipper_models/models/business.dart';
import 'package:flipper_models/models/login.dart';
import 'package:flipper_models/models/sync.dart';

import 'abstractions/api.dart';

class FakeApi implements Api {
  @override
  void cleanKeyPad() {
    // TODO: implement cleanKeyPad
  }

  @override
  void listenCategory() {
    // TODO: implement listenCategory
  }

  @override
  void listenColor() {
    // TODO: implement listenColor
  }

  @override
  void listenOrder() {
    // TODO: implement listenOrder
  }

  @override
  Future payroll() {
    // TODO: implement payroll
    throw UnimplementedError();
  }

  @override
  Future<Login> login({required String phone}) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Sync> sync({required String userId}) {
    // TODO: implement sync
    throw UnimplementedError();
  }

  @override
  Future<List<Business>> canStart() {
    // TODO: implement canStart
    throw UnimplementedError();
  }
}
