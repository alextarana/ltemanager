// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$RouterApi extends RouterApi {
  _$RouterApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = RouterApi;

  @override
  Future<Response<dynamic>> requestAuthToken(Map<String, String> body) {
    final Uri $url = Uri.parse('/api/webserver/SesTokInfo');
    final $body = body;
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> signInWithEmailAndPassword(String body) {
    final Uri $url = Uri.parse('/api/user/login');
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
    final Uri $url = Uri.parse('/api/user/state-login');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> logout(String body) {
    final Uri $url = Uri.parse('/api/user/logout');
    final $body = body;
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
