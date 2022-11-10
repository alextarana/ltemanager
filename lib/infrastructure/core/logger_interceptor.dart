import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:logger/logger.dart';

class LoggerInterceptor implements RequestInterceptor, ResponseInterceptor {
  final Logger _logger;
  LoggerInterceptor(this._logger);

  @override
  FutureOr<Request> onRequest(Request request) {
    _logger.i([
      request.method,
      request.path,
      request.headers,
      request.body,
    ]);
    return request;
  }

  @override
  FutureOr<Response> onResponse(Response response) {
    _logger.i([response.statusCode, response.body]);
    return response;
  }
}
