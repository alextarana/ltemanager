// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_huawei_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$HuaweiRouterApi extends HuaweiRouterApi {
  _$HuaweiRouterApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = HuaweiRouterApi;

  @override
  Future<Response<dynamic>> requestAuthToken() {
    final String $url = '/api/webserver/SesTokInfo';
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> signInWithEmailAndPassword(String body) {
    final String $url = '/api/user/login';
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> loginState() {
    final String $url = '/api/user/state-login';
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> logout(String body) {
    final String $url = '/api/user/logout';
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
