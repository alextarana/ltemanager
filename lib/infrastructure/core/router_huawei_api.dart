import 'package:chopper/chopper.dart';

part "router_huawei_api.chopper.dart";

@ChopperApi(baseUrl: "/api")
abstract class HuaweiRouterApi extends ChopperService {
  static HuaweiRouterApi create(ChopperClient client) =>
      _$HuaweiRouterApi(client);

  @Get(path: "/webserver/SesTokInfo")
  Future<Response> requestAuthToken();

  @Post(path: "/user/login")
  Future<Response> signInWithEmailAndPassword(
    @Body() String body,
  );

  @Get(path: "/user/state-login")
  Future<Response> loginState();

  @Post(path: "/user/logout")
  Future<Response> logout(
    @Body() String body,
  );
}
