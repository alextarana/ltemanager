import 'package:chopper/chopper.dart';

part "router_zte_api.chopper.dart";

@ChopperApi(baseUrl: "")
abstract class ZteRouterApi extends ChopperService {
  static ZteRouterApi create(ChopperClient client) => _$ZteRouterApi(client);

  // GET REQUESTS
  @Get(path: "/api/webserver/SesTokInfo")
  Future<Response> requestAuthToken();

  @Get(path: "/api/device/signal")
  Future<Response> fetchDeviceSignal();

  @Get(path: "/api/user/state-login")
  Future<Response> fetchLoginState();

  @Get(path: "/api/net/current-plmn")
  Future<Response> fetchCarrier();

  @Get(path: "/api/device/information")
  Future<Response> fetchDeviceInfos();

  @Get(path: "/api/monitoring/traffic-statistics")
  Future<Response> fetchTrafficStats();

  @Get(path: "/api/monitoring/month_statistics")
  Future<Response> fetchTrafficStatsMontly();

  @Get(path: "/api/monitoring/status")
  Future<Response> fetchStatusInfos();

  @Get(path: "/api/net/net-modes")
  Future<Response> fetchNetModeInfos();

  // ZTE specific endpoints
  @Get(path: "/goform/goform_get_cmd_process")
  Future<Response> fetchZteStatus({
    @Query('cmd') required String cmd,
    @Query('multi_data') String multiData = '1',
  });

  @Post(path: "/goform/goform_set_cmd_process")
  Future<Response> sendZteCommand(
    @Body() Map<String, dynamic> body,
  );

  // POST REQUESTS
  @Post(path: "/user/login")
  Future<Response> signInWithEmailAndPassword(
    @Body() String body,
  );

  @Post(path: "/user/logout")
  Future<Response> logout(
    @Body() String body,
  );

  @Post(path: "/net/net-mode")
  Future<Response> setBands(
    @Body() String body,
  );
}
