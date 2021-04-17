// Mocks generated by Mockito 5.0.4 from annotations
// in flipper_models/test/view_models/startup_viewmodel_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:flipper_models/models/business.dart' as _i6;
import 'package:flipper_models/models/login.dart' as _i2;
import 'package:flipper_models/models/sync.dart' as _i3;
import 'package:flipper_services/abstractions/api.dart' as _i4;
import 'package:flipper_services/abstractions/storage.dart' as _i7;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

class _FakeLogin extends _i1.Fake implements _i2.Login {}

class _FakeSync extends _i1.Fake implements _i3.Sync {}

/// A class which mocks [Api].
///
/// See the documentation for Mockito's code generation for more information.
class MockApi extends _i1.Mock implements _i4.Api {
  MockApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<dynamic> payroll() =>
      (super.noSuchMethod(Invocation.method(#payroll, []),
          returnValue: Future<dynamic>.value(null)) as _i5.Future<dynamic>);
  @override
  void listenOrder() => super.noSuchMethod(Invocation.method(#listenOrder, []),
      returnValueForMissingStub: null);
  @override
  void listenColor() => super.noSuchMethod(Invocation.method(#listenColor, []),
      returnValueForMissingStub: null);
  @override
  void listenCategory() =>
      super.noSuchMethod(Invocation.method(#listenCategory, []),
          returnValueForMissingStub: null);
  @override
  void cleanKeyPad() => super.noSuchMethod(Invocation.method(#cleanKeyPad, []),
      returnValueForMissingStub: null);
  @override
  _i5.Future<_i2.Login> login({String? phone}) =>
      (super.noSuchMethod(Invocation.method(#login, [], {#phone: phone}),
              returnValue: Future<_i2.Login>.value(_FakeLogin()))
          as _i5.Future<_i2.Login>);
  @override
  _i5.Future<int> signup({Map<dynamic, dynamic>? business}) =>
      (super.noSuchMethod(Invocation.method(#signup, [], {#business: business}),
          returnValue: Future<int>.value(0)) as _i5.Future<int>);
  @override
  _i5.Future<_i3.Sync> authenticateWithOfflineDb({String? userId}) =>
      (super.noSuchMethod(
          Invocation.method(#authenticateWithOfflineDb, [], {#userId: userId}),
          returnValue:
              Future<_i3.Sync>.value(_FakeSync())) as _i5.Future<_i3.Sync>);
  @override
  _i5.Future<List<_i6.Business>> canStart() =>
      (super.noSuchMethod(Invocation.method(#canStart, []),
              returnValue: Future<List<_i6.Business>>.value(<_i6.Business>[]))
          as _i5.Future<List<_i6.Business>>);
}

/// A class which mocks [LocalStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocalStorage extends _i1.Mock implements _i7.LocalStorage {
  MockLocalStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  dynamic read({String? key}) =>
      super.noSuchMethod(Invocation.method(#read, [], {#key: key}));
  @override
  bool write({String? key, String? value}) => (super.noSuchMethod(
      Invocation.method(#write, [], {#key: key, #value: value}),
      returnValue: false) as bool);
}
