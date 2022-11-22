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
import 'package:ltemanager2/infrastructure/core/router_huawei_api.dart';
import 'package:chopper/chopper.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IAuthFacade)
class RouterHuaweiAuthFacade implements IAuthFacade {
  final HuaweiRouterApi _api;
  final SharedPreferences _sharedPreferences;

  RouterHuaweiAuthFacade(this._api, this._sharedPreferences);

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
      final response = await _api.requestAuthToken().catchError(
            (onError) => throw Exception(),
          );

      if (response.isSuccessful) {
        final Map<String, dynamic> body =
            jsonDecode(response.body as String) as Map<String, dynamic>;

        final Map<String, dynamic> realBody =
            body["response"] as Map<String, dynamic>;

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
            '<?xml version="1.0"encoding="UTF-8"?><request><Username>$usernameStr</Username><Password>$authinfo</Password><password_type>4</password_type>';

        final responseLogin =
            await _api.signInWithEmailAndPassword(logininfo).catchError(
                  (onError) => throw Exception(),
                );

        if (responseLogin.isSuccessful) {
          final bodyLogin =
              jsonDecode(responseLogin.body as String) as Map<String, dynamic>;

          debugPrint(bodyLogin.toString());

          if (bodyLogin["response"] != "OK") {
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
            return left(const AuthFailure.invalidEmailAndPasswordCombination());
          }

          return right(unit);
        } else {
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
          return left(const AuthFailure.serverError());
        }
      }

      return left(const AuthFailure.serverError());
    } on Exception {
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
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> isSignedIn() async {
    try {
      final response = await _api
          .fetchLoginState()
          .catchError((onError) => throw Exception());

      if (response.isSuccessful) {
        final body =
            jsonDecode(response.body as String) as Map<String, dynamic>;

        final bodyResponse = body["response"] as Map<String, dynamic>?;

        final state = (bodyResponse != null) ? bodyResponse["State"] : null;

        if (state != null) {
          if (state == "-1") {
            await _sharedPreferences.setString(
              "_sessionCookie",
              "",
            );
            await _sharedPreferences.setString(
              "_requestTokenOne",
              "",
            );
            return left(const AuthFailure.notAuthenticated());
          }
          return right(unit);
        }
        return right(unit);
      } else {
        return left(const AuthFailure.notAuthenticated());
      }
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    const logoutInfo =
        '<?xml version:"1.0" encoding="UTF-8"?><request><Logout>1</Logout></request>';

    try {
      final response = await _api.logout(logoutInfo).catchError(
            (onError) => throw Exception(),
          );

      debugPrint(response.body.toString());

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
