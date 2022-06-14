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
    final $url = '/api/webserver/SesTokInfo';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> signInWithEmailAndPassword(String body) {
    final $url = '/api/user/login';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> loginState() {
    final $url = '/api/user/state-login';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> logout(String body) {
    final $url = '/api/user/logout';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
