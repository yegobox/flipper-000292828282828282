import 'package:flipper_models/models/business.dart';
import 'package:flipper_models/models/login.dart';
import 'package:flipper_models/models/product.dart';
import 'package:flipper_models/models/sync.dart';

import 'abstractions/api.dart';

class FakeApi implements Api {
  @override
  Future<Sync> authenticateWithOfflineDb({required String userId}) {
    // TODO: implement authenticateWithOfflineDb
    throw UnimplementedError();
  }

  @override
  Future<List<Business>> businesses() {
    // TODO: implement canStart
    throw UnimplementedError();
  }

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
  Future<Login> login({required String phone}) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future payroll() {
    // TODO: implement payroll
    throw UnimplementedError();
  }

  @override
  Future<int> signup({required Map business}) {
    // TODO: implement signup
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> products() {
    // TODO: implement products
    throw UnimplementedError();
  }
}
