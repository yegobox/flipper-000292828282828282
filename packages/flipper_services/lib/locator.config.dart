// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stacked_services/stacked_services.dart' as _i6;

import 'abstractions/api.dart' as _i3;
import 'flipper_firebase_auth.dart' as _i4;
import 'http_api.dart' as _i5;
import 'third_party_services_module.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final thirdPartyServicesModule = _$ThirdPartyServicesModule();
  gh.lazySingleton<_i3.Api>(() => thirdPartyServicesModule.apiService);
  gh.lazySingleton<_i4.FlipperFirebaseAuthenticationService>(
      () => thirdPartyServicesModule.flipperFire);
  gh.lazySingleton<_i5.HttpApi>(() => _i5.HttpApi());
  gh.lazySingleton<_i6.NavigationService>(() => thirdPartyServicesModule.nav);
  return get;
}

class _$ThirdPartyServicesModule extends _i7.ThirdPartyServicesModule {
  @override
  _i4.FlipperFirebaseAuthenticationService get flipperFire =>
      _i4.FlipperFirebaseAuthenticationService();
  @override
  _i6.NavigationService get nav => _i6.NavigationService();
}
