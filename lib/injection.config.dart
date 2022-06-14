// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import 'application/auth/auth_bloc.dart' as _i3;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i8;
import 'domain/auth/i_auth_facade.dart' as _i4;
import 'infrastructure/auth/router_auth_facade.dart' as _i10;
import 'infrastructure/auth/router_huawei_auth_facade.dart' as _i9;
import 'infrastructure/core/module_injectable.dart' as _i11;
import 'infrastructure/core/router_api.dart' as _i6;
import 'infrastructure/core/router_huawei_api.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final flutterModule = _$FlutterModule();
  gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc(get<_i4.IAuthFacade>()));
  gh.lazySingleton<_i5.HuaweiRouterApi>(() => flutterModule.sentricApi);
  gh.lazySingleton<_i6.RouterApi>(() => flutterModule.genericRouterApi);
  await gh.factoryAsync<_i7.SharedPreferences>(() => flutterModule.prefs,
      preResolve: true);
  gh.factory<_i8.SignInFormBloc>(
      () => _i8.SignInFormBloc(get<_i4.IAuthFacade>()));
  gh.lazySingleton<_i4.IAuthFacade>(
      () => _i9.RouterHuaweiAuthFacade(
          get<_i5.HuaweiRouterApi>(), get<_i7.SharedPreferences>()),
      instanceName: 'HuaweiAuthFacade');
  gh.lazySingleton<_i4.IAuthFacade>(
      () => _i10.RouterAuthFacade(
          get<_i6.RouterApi>(), get<_i7.SharedPreferences>()),
      instanceName: 'RouterGenericAuthFacade');
  return get;
}

class _$FlutterModule extends _i11.FlutterModule {}
