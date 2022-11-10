import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:ltemanager2/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PathInterceptor implements RequestInterceptor, ResponseInterceptor {
  final SharedPreferences _sharedPreferences;

  factory PathInterceptor() {
    return PathInterceptor._(getIt<SharedPreferences>());
  }

  const PathInterceptor._(this._sharedPreferences);

  @override
  FutureOr<Request> onRequest(Request request) {
    final _url = _sharedPreferences.getString("_baseUrl");

    debugPrint(request.path);

    return request.copyWith(origin: _url);
  }

  @override
  FutureOr<Response> onResponse(Response response) {
    return response;
  }
}
