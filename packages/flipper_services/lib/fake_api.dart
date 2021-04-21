import 'package:flipper_models/models/branch.dart';
import 'package:flipper_models/models/business.dart';
import 'package:flipper_models/models/color.dart';
import 'package:flipper_models/models/login.dart';
import 'package:flipper_models/models/product.dart';
import 'package:flipper_models/models/stock.dart';
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

  @override
  Future<List<Stock>> stocks({required String productId}) {
    // TODO: implement stocks
    throw UnimplementedError();
  }

  @override
  Future<List<Branch>> branches({required String businessId}) {
    // TODO: implement branches
    throw UnimplementedError();
  }

  @override
  Future<int> create<T>({T? data, required String endPoint}) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<bool> logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  Future<List<PColor>> colors({required String branchId}) {
    // TODO: implement colors
    throw UnimplementedError();
  }
}
