// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import 'application/auth/auth_bloc.dart' as _i10;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i9;
import 'domain/auth/i_auth_facade.dart' as _i5;
import 'infrastructure/auth/router_zte_auth_facade.dart' as _i12;
import 'infrastructure/auth/router_auth_facade.dart' as _i7;
import 'infrastructure/auth/router_huawei_auth_facade.dart' as _i6;
import 'infrastructure/core/module_injectable.dart' as _i11;
import 'infrastructure/core/router_api.dart' as _i8;
import 'infrastructure/core/router_huawei_api.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final flutterModule = _$FlutterModule();
  gh.lazySingleton<_i3.HuaweiRouterApi>(() => flutterModule.huaweiApi);
  await gh.factoryAsync<_i4.SharedPreferences>(
    () => flutterModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i5.IAuthFacade>(() => _i6.RouterHuaweiAuthFacade(
        get<_i3.HuaweiRouterApi>(),
        get<_i4.SharedPreferences>(),
      ));
  gh.lazySingleton<_i5.IAuthFacade>(
    () => _i12.RouterZteAuthFacade(get<_i4.SharedPreferences>()),
    instanceName: 'RouterZteAuthFacade',
  );
  gh.lazySingleton<_i5.IAuthFacade>(
    () => _i7.RouterAuthFacade(
      get<_i8.RouterApi>(),
      get<_i4.SharedPreferences>(),
    ),
    instanceName: 'RouterGenericAuthFacade',
  );
  gh.factory<_i9.SignInFormBloc>(() => _i9.SignInFormBloc(
        get<_i5.IAuthFacade>(),
        get<_i5.IAuthFacade>(instanceName: 'RouterZteAuthFacade'),
        get<_i4.SharedPreferences>(),
      ));
  gh.factory<_i10.AuthBloc>(() => _i10.AuthBloc(
        get<_i5.IAuthFacade>(),
        get<_i5.IAuthFacade>(instanceName: 'RouterZteAuthFacade'),
        get<_i4.SharedPreferences>(),
      ));
  return get;
}

class _$FlutterModule extends _i11.FlutterModule {}
