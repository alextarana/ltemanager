import 'package:chopper/chopper.dart';

part "router_api.chopper.dart";

@ChopperApi(baseUrl: "/api")
abstract class RouterApi extends ChopperService {
  static RouterApi create(ChopperClient client) => _$RouterApi(client);

  @Get(path: "/webserver/SesTokInfo")
  Future<Response> requestAuthToken(
    @Body() Map<String, String> body,
  );

  @Post(path: "/user/login")
  Future<Response> signInWithEmailAndPassword(
    @Body() String body,
  );

  @Get(path: "/user/state-login")
  Future<Response> loginState();

  @Get(path: "/user/logout")
  Future<Response> logout(
    @Body() String body,
  );
}
