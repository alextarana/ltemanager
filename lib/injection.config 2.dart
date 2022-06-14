// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import 'application/auth/auth_bloc.dart' as _i8;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i7;
import 'domain/auth/i_auth_facade.dart' as _i5;
import 'infrastructure/auth/router_huawei_auth_facade.dart' as _i6;
import 'infrastructure/core/module_injectable.dart' as _i9;
import 'infrastructure/core/router_huawei_api.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final flutterModule = _$FlutterModule();
  gh.lazySingleton<_i3.HuaweiRouterApi>(() => flutterModule.sentricApi);
  await gh.factoryAsync<_i4.SharedPreferences>(() => flutterModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i5.IAuthFacade>(() => _i6.RouterHuaweiAuthFacade(
      get<_i3.HuaweiRouterApi>(), get<_i4.SharedPreferences>()));
  gh.factory<_i7.SignInFormBloc>(
      () => _i7.SignInFormBloc(get<_i5.IAuthFacade>()));
  gh.factory<_i8.AuthBloc>(() => _i8.AuthBloc(get<_i5.IAuthFacade>()));
  return get;
}

class _$FlutterModule extends _i9.FlutterModule {}
