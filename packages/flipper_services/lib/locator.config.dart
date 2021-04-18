// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stacked_services/stacked_services.dart' as _i8;

import 'abstractions/api.dart' as _i3;
import 'abstractions/location.dart' as _i4;
import 'abstractions/platform.dart' as _i7;
import 'abstractions/storage.dart' as _i6;
import 'http_api.dart' as _i5;
import 'third_party_services_module.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final thirdPartyServicesModule = _$ThirdPartyServicesModule();
  gh.lazySingleton<_i3.Api>(() => thirdPartyServicesModule.apiService);
  gh.lazySingleton<_i4.FlipperLocation>(
      () => thirdPartyServicesModule.location);
  gh.lazySingleton<_i5.HttpApi>(() => _i5.HttpApi());
  gh.lazySingleton<_i6.LocalStorage>(() => thirdPartyServicesModule.box);
  gh.lazySingleton<_i7.LoginStandard>(
      () => thirdPartyServicesModule.flipperFire);
  gh.lazySingleton<_i8.NavigationService>(() => thirdPartyServicesModule.nav);
  return get;
}

class _$ThirdPartyServicesModule extends _i9.ThirdPartyServicesModule {
  @override
  _i8.NavigationService get nav => _i8.NavigationService();
}
