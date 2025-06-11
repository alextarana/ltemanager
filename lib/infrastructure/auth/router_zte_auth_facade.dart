import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:ltemanager2/domain/auth/auth_failure.dart';
import 'package:ltemanager2/domain/auth/i_auth_facade.dart';
import 'package:ltemanager2/domain/auth/value_objects.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IAuthFacade, instanceName: 'RouterZteAuthFacade')
class RouterZteAuthFacade implements IAuthFacade {
  final SharedPreferences _sharedPreferences;

  RouterZteAuthFacade(this._sharedPreferences);

  Future<void> _setRouterURL(String url) async {
    await _sharedPreferences.setString('_baseUrl', url);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required IPAddress url,
    required Username username,
    required Password password,
  }) async {
    final urlStr = url.value.getOrElse(() => '');
    await _setRouterURL(urlStr);
    final passwordStr = password.value.getOrElse(() => '');

    try {
      final ldResp = await http.get(
        Uri.parse('$urlStr/goform/goform_get_cmd_process?isTest=false&cmd=LD'),
        headers: {'referer': urlStr},
      );
      if (ldResp.statusCode != 200) {
        return left(const AuthFailure.serverError());
      }
      final ld = (jsonDecode(ldResp.body) as Map<String, dynamic>)['LD'] as String;

      final first = sha256.convert(utf8.encode(passwordStr)).toString().toUpperCase();
      final second = sha256.convert(utf8.encode('$first$ld')).toString().toUpperCase();

      final loginResp = await http.get(
        Uri.parse('$urlStr/goform/goform_set_cmd_process?isTest=false&goformId=LOGIN&password=$second'),
        headers: {'referer': urlStr},
      );

      if (loginResp.statusCode == 200) {
        final body = jsonDecode(loginResp.body) as Map<String, dynamic>;
        if (body['result'] == '0') {
          await _sharedPreferences.setString(
            '_sessionCookie',
            loginResp.headers['set-cookie'] ?? '',
          );
          return right(unit);
        }
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    } catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> isSignedIn() async {
    final cookie = _sharedPreferences.getString('_sessionCookie') ?? '';
    if (cookie.isEmpty) {
      return left(const AuthFailure.notAuthenticated());
    }
    return right(unit);
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    await _sharedPreferences.setString('_sessionCookie', '');
    return right(unit);
  }
}
