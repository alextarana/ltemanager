// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_zte_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ZteRouterApi extends ZteRouterApi {
  _$ZteRouterApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ZteRouterApi;

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
  Future<Response<dynamic>> fetchDeviceSignal() {
    final String $url = '/api/device/signal';
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> fetchLoginState() {
    final String $url = '/api/user/state-login';
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> fetchCarrier() {
    final String $url = '/api/net/current-plmn';
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> fetchDeviceInfos() {
    final String $url = '/api/device/information';
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> fetchTrafficStats() {
    final String $url = '/api/monitoring/traffic-statistics';
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> fetchTrafficStatsMontly() {
    final String $url = '/api/monitoring/month_statistics';
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> fetchStatusInfos() {
    final String $url = '/api/monitoring/status';
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> fetchNetModeInfos() {
    final String $url = '/api/net/net-modes';
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

  @override
  Future<Response<dynamic>> setBands(String body) {
    final String $url = '/api/net/net-mode';
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
  Future<Response<dynamic>> fetchZteStatus({
    required String cmd,
    String multiData = '1',
  }) {
    final String \$url = '/goform/goform_get_cmd_process';
    final Map<String, dynamic> \$params = <String, dynamic>{
      'cmd': cmd,
      'multi_data': multiData,
    };
    final Request \$request = Request(
      'GET',
      \$url,
      client.baseUrl,
      parameters: \$params,
    );
    return client.send<dynamic, dynamic>(\$request);
  }

  @override
  Future<Response<dynamic>> sendZteCommand(Map<String, dynamic> body) {
    final String \$url = '/goform/goform_set_cmd_process';
    final \$body = body;
    final Request \$request = Request(
      'POST',
      \$url,
      client.baseUrl,
      body: \$body,
    );
    return client.send<dynamic, dynamic>(\$request);
  }
}
