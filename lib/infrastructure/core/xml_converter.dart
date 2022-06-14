import 'dart:async';

import 'package:chopper/chopper.dart' show Converter;
import 'package:chopper/src/request.dart';
import 'package:chopper/src/response.dart';
import 'package:xml2json/xml2json.dart';

class XMLConverter implements Converter {
  @override
  FutureOr<Request> convertRequest(Request request) {
    final body = request.body;
    return request.copyWith(body: body);
  }

  @override
  FutureOr<Response<String>> convertResponse<String, InnerType>(
    Response response,
  ) {
    final body = response.body;

    final transformer = Xml2Json();

    transformer.parse(body.toString());
    final String? responseDict = transformer.toParker() as String?;

    return response.copyWith(body: responseDict);
  }
}
