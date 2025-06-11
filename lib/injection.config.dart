// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import 'application/auth/auth_bloc.dart' as _i7;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i5;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'infrastructure/auth/router_auth_facade.dart' as _i9;
import 'infrastructure/auth/router_huawei_auth_facade.dart' as _i8;
import 'infrastructure/auth/router_zte_auth_facade.dart' as _i11;
import 'infrastructure/core/module_injectable.dart' as _i12;
import 'infrastructure/core/router_api.dart' as _i10;
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
  gh.factory<_i5.SignInFormBloc>(() => _i5.SignInFormBloc(
        get<_i6.IAuthFacade>(),
        get<_i6.IAuthFacade>(instanceName: 'RouterZteAuthFacade'),
        get<_i4.SharedPreferences>(),
      ));
  gh.factory<_i7.AuthBloc>(() => _i7.AuthBloc(
        get<_i6.IAuthFacade>(),
        get<_i6.IAuthFacade>(instanceName: 'RouterZteAuthFacade'),
        get<_i4.SharedPreferences>(),
      ));
  gh.lazySingleton<_i6.IAuthFacade>(
    () => _i8.RouterHuaweiAuthFacade(
      get<_i3.HuaweiRouterApi>(),
      get<_i4.SharedPreferences>(),
    ),
    instanceName: 'HuaweiRouterAuthFacade',
  );
  gh.lazySingleton<_i6.IAuthFacade>(
    () => _i9.RouterAuthFacade(
      get<_i10.RouterApi>(),
      get<_i4.SharedPreferences>(),
    ),
    instanceName: 'RouterGenericAuthFacade',
  );
  gh.lazySingleton<_i6.IAuthFacade>(
    () => _i11.RouterZteAuthFacade(get<_i4.SharedPreferences>()),
    instanceName: 'ZTERouterAuthFacade',
  );
  return get;
}

class _$FlutterModule extends _i12.FlutterModule {}
