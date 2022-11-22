import 'package:chopper/chopper.dart';

part "router_huawei_api.chopper.dart";

@ChopperApi(baseUrl: "/api")
abstract class HuaweiRouterApi extends ChopperService {
  static HuaweiRouterApi create(ChopperClient client) =>
      _$HuaweiRouterApi(client);

  // GET REQUESTS
  @Get(path: "/webserver/SesTokInfo")
  Future<Response> requestAuthToken();

  @Get(path: "/device/signal")
  Future<Response> fetchDeviceSignal();

  @Get(path: "/user/state-login")
  Future<Response> fetchLoginState();

  @Get(path: "/net/current-plmn")
  Future<Response> fetchCarrier();

  @Get(path: "/device/information")
  Future<Response> fetchDeviceInfos();

  @Get(path: "/monitoring/traffic-statistics")
  Future<Response> fetchTrafficStats();

  @Get(path: "/monitoring/month_statistics")
  Future<Response> fetchTrafficStatsMontly();

  @Get(path: "/monitoring/status")
  Future<Response> fetchStatusInfos();

  @Get(path: "/net/net-modes")
  Future<Response> fetchNetModeInfos();

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
