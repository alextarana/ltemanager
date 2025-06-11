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
    final Uri $url = Uri.parse('/api/webserver/SesTokInfo');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> fetchDeviceSignal() {
    final Uri $url = Uri.parse('/api/device/signal');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> fetchLoginState() {
    final Uri $url = Uri.parse('/api/user/state-login');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> fetchCarrier() {
    final Uri $url = Uri.parse('/api/net/current-plmn');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> fetchDeviceInfos() {
    final Uri $url = Uri.parse('/api/device/information');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> fetchTrafficStats() {
    final Uri $url = Uri.parse('/api/monitoring/traffic-statistics');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> fetchTrafficStatsMontly() {
    final Uri $url = Uri.parse('/api/monitoring/month_statistics');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> fetchStatusInfos() {
    final Uri $url = Uri.parse('/api/monitoring/status');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> fetchNetModeInfos() {
    final Uri $url = Uri.parse('/api/net/net-modes');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
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
  Future<Response<dynamic>> logout(String body) {
    final Uri $url = Uri.parse('/api/user/logout');
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
    final Uri $url = Uri.parse('/api/net/net-mode');
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
