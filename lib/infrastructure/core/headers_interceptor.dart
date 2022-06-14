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
    final _headers = Map<String, String>.from(request.headers);

    final _requestToken = _sharedPreferences.getString("_requestToken") ?? "";
    final _requestTokenOne =
        _sharedPreferences.getString("_requestTokenOne") ?? "";

    final _requestTokenTwo =
        _sharedPreferences.getString("_requestTokenTwo") ?? "";
    final _sessionCookie = _sharedPreferences.getString("_sessionCookie") ?? "";

    _headers["Cookie"] = "SessionID=$_sessionCookie";

    if (_requestTokenOne.isNotEmpty) {
      _headers["__RequestVerificationToken"] = _requestTokenOne;
    } else if (_requestTokenTwo.isNotEmpty) {
      _headers["__RequestVerificationToken"] = _requestTokenTwo;
    } else {
      _headers["__RequestVerificationToken"] = _requestToken;
    }

    _headers["Accept"] = "*/*";
    _headers["User-Agent"] =
        "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.12) Gecko/20101026 Firefox/3.6.12";

    debugPrint(_headers.toString());

    return request.copyWith(
      headers: _headers,
    );
  }

  @override
  FutureOr<Response> onResponse(Response response) async {
    final _headers = Map<String, String>.from(response.headers);

    String _requestTokenOne =
        _sharedPreferences.getString("_requestTokenOne") ?? "";

    String _requestTokenTwo =
        _sharedPreferences.getString("_requestTokenTwo") ?? "";

    String _requestToken = _sharedPreferences.getString("_requestToken") ?? "";

    String _sessionCookie =
        _sharedPreferences.getString("_sessionCookie") ?? "";

    if (_headers["__requestverificationtokenone"] != null) {
      _requestTokenOne = _headers["__requestverificationtokenone"].toString();
    }

    if (_headers["__requestverificationtokentwo"] != null) {
      _requestTokenTwo = _headers["__requestverificationtokentwo"].toString();
    }

    if (_headers["__requestVerificationtoken"] != null) {
      _requestToken = _headers["__requestverificationtoken"].toString();
    }

    if (_headers["set-cookie"] != null) {
      _sessionCookie = _headers["set-cookie"].toString();
      final tmp = _sessionCookie.split(";");
      final tmpString = tmp[0].split("=");

      _sessionCookie = tmpString[1];
    }

    await _sharedPreferences.setString("_requestToken", _requestToken);
    await _sharedPreferences.setString("_requestTokenOne", _requestTokenOne);
    await _sharedPreferences.setString("_requestTokenTwo", _requestTokenTwo);
    await _sharedPreferences.setString("_sessionCookie", _sessionCookie);

    return response;
  }
}
