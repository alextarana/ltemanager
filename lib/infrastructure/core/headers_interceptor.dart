import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:flutter/foundation.dart';
import 'package:ltemanager2/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HeadersHanldeInterceptor
    implements RequestInterceptor, ResponseInterceptor {
  final SharedPreferences _sharedPreferences;

  factory HeadersHanldeInterceptor() {
    return HeadersHanldeInterceptor._(getIt<SharedPreferences>());
  }

  const HeadersHanldeInterceptor._(this._sharedPreferences);

  @override
  FutureOr<Request> onRequest(Request request) {
    final headers = Map<String, String>.from(request.headers);

    final requestToken = _sharedPreferences.getString("_requestToken") ?? "";
    final requestTokenOne =
        _sharedPreferences.getString("_requestTokenOne") ?? "";

    final requestTokenTwo =
        _sharedPreferences.getString("_requestTokenTwo") ?? "";
    final sessionCookie = _sharedPreferences.getString("_sessionCookie") ?? "";

    headers["Cookie"] = "SessionID=$sessionCookie";

    if (requestTokenOne.isNotEmpty) {
      headers["__RequestVerificationToken"] = requestTokenOne;
    } else if (requestTokenTwo.isNotEmpty) {
      headers["__RequestVerificationToken"] = requestTokenTwo;
    } else {
      headers["__RequestVerificationToken"] = requestToken;
    }

    headers["Accept"] = "*/*";
    headers["User-Agent"] =
        "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.12) Gecko/20101026 Firefox/3.6.12";

    debugPrint(headers.toString());
    debugPrint(request.path);

    return request.copyWith(
      headers: headers,
    );
  }

  @override
  FutureOr<Response> onResponse(Response response) async {
    final headers = Map<String, String>.from(response.headers);

    String requestTokenOne =
        _sharedPreferences.getString("_requestTokenOne") ?? "";

    String requestTokenTwo =
        _sharedPreferences.getString("_requestTokenTwo") ?? "";

    String requestToken = _sharedPreferences.getString("_requestToken") ?? "";

    String sessionCookie = _sharedPreferences.getString("_sessionCookie") ?? "";

    if (headers["__requestverificationtokenone"] != null) {
      requestTokenOne = headers["__requestverificationtokenone"].toString();
    }

    if (headers["__requestverificationtokentwo"] != null) {
      requestTokenTwo = headers["__requestverificationtokentwo"].toString();
    }

    if (headers["__requestVerificationtoken"] != null) {
      requestToken = headers["__requestverificationtoken"].toString();
    }

    if (headers["set-cookie"] != null) {
      sessionCookie = headers["set-cookie"].toString();
      final tmp = sessionCookie.split(";");
      final tmpString = tmp[0].split("=");

      sessionCookie = tmpString[1];
    }

    await _sharedPreferences.setString("_requestToken", requestToken);
    await _sharedPreferences.setString("_requestTokenOne", requestTokenOne);
    await _sharedPreferences.setString("_requestTokenTwo", requestTokenTwo);
    await _sharedPreferences.setString("_sessionCookie", sessionCookie);

    return response;
  }
}
