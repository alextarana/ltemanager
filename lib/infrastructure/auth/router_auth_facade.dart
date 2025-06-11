import 'dart:convert';

import 'package:crypto/crypto.dart';

import 'package:convert/convert.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:ltemanager2/domain/auth/auth_failure.dart';
import 'package:ltemanager2/domain/auth/i_auth_facade.dart';
import 'package:ltemanager2/domain/auth/value_objects.dart';
import 'package:ltemanager2/infrastructure/core/common.dart';
import 'package:ltemanager2/infrastructure/core/router_api.dart';
import 'package:chopper/chopper.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Named("RouterGenericAuthFacade")
@LazySingleton(as: IAuthFacade)
class RouterAuthFacade implements IAuthFacade {
  final RouterApi _api;
  final SharedPreferences _sharedPreferences;

  RouterAuthFacade(this._api, this._sharedPreferences);

  Future<void> _setRouterURL(String url) async {
    await _sharedPreferences.setString("_baseUrl", url);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required IPAddress url,
    required Username username,
    required Password password,
  }) async {
    final urlStr = url.value.getOrElse(() => 'INVALID URL');
    await _setRouterURL(urlStr);
    final usernameStr = username.value.getOrElse(() => 'INVALID EMAIL');
    final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');

    try {
      final response = await _api.requestAuthToken({});

      if (response.isSuccessful) {
        final Map<String, dynamic> body =
            jsonDecode(response.body as String) as Map<String, dynamic>;

        final Map<String, dynamic> realBody =
            body["response"] as Map<String, dynamic>;

        debugPrint(realBody.toString());

        debugPrint(realBody["SesInfo"].toString());
        debugPrint(realBody["TokInfo"].toString());

        await _sharedPreferences.setString(
          "_sessionCookie",
          (realBody["SesInfo"] as String?) ?? "",
        );
        await _sharedPreferences.setString(
          "_requestToken",
          (realBody["TokInfo"] as String?) ?? "",
        );

        final String _requestToken = (realBody["TokInfo"] as String?) ?? "";

        final pass = base64.encode(
          ascii.encode(
            hex.encode(sha256.convert(utf8.encode(passwordStr)).bytes),
          ),
        );

        final authinfo = base64.encode(
          ascii.encode(
            hex.encode(
              sha256
                  .convert(
                    utf8.encode(usernameStr) +
                        utf8.encode(pass) +
                        utf8.encode(_requestToken),
                  )
                  .bytes,
            ),
          ),
        );

        final logininfo =
            '<?xml version="1.0" encoding="UTF-8"?><request><Username>$usernameStr</Username><Password>$authinfo</Password><password_type>4</password_type></request>';

        final responseLogin = await _api.signInWithEmailAndPassword(logininfo);

        if (responseLogin.isSuccessful) {
          final bodyLogin =
              jsonDecode(responseLogin.body as String) as Map<String, dynamic>;

          if (bodyLogin["response"] != "OK") {
            await _sharedPreferences.setString(
              "_sessionCookie",
              "",
            );
            await _sharedPreferences.setString(
              "_requestToken",
              "",
            );
            return left(const AuthFailure.invalidEmailAndPasswordCombination());
          }

          return right(unit);
        } else {
          await _sharedPreferences.setString(
            "_sessionCookie",
            "",
          );
          await _sharedPreferences.setString(
            "_requestToken",
            "",
          );
          return left(const AuthFailure.serverError());
        }
      }

      return left(const AuthFailure.serverError());
    } on Exception catch (e) {
      debugPrint(e.toString());
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> isSignedIn() async {
    try {
      final response = await _api.loginState();

      if (response.isSuccessful) {
        return right(unit);
      } else {
        return left(const AuthFailure.notAuthenticated());
      }
    } on Exception {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    const logoutInfo =
        '<?xml version="1.0" encoding="UTF-8"?><request><Logout>1</Logout></request>';

    try {
      final response = await _api.logout(logoutInfo);

      if (response.isSuccessful) {
        final bodyLogout =
            jsonDecode(response.body as String) as Map<String, dynamic>;

        if (bodyLogout["response"] != "OK") {
          return left(const AuthFailure.requestLogoutFailes());
        }

        await _sharedPreferences.setString(
          "_sessionCookie",
          "",
        );
        await _sharedPreferences.setString(
          "_requestTokenOne",
          "",
        );
        await _sharedPreferences.setString(
          "_requestTokenTwo",
          "",
        );
        await _sharedPreferences.setString(
          "_requestToken",
          "",
        );
        return right(unit);
      }
      return left(const AuthFailure.requestLogoutFailes());
    } on Exception {
      return left(const AuthFailure.serverError());
    }
  }
}
