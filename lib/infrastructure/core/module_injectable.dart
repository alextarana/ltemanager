// ignore: depend_on_referenced_packages
import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:ltemanager2/infrastructure/core/headers_interceptor.dart';
import 'package:ltemanager2/infrastructure/core/logger_interceptor.dart';
import 'package:ltemanager2/infrastructure/core/path_interceptor.dart';
import 'package:ltemanager2/infrastructure/core/router_huawei_api.dart';
import 'package:ltemanager2/infrastructure/core/xml_converter.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class FlutterModule {
  @LazySingleton()
  HuaweiRouterApi get huaweiApi => HuaweiRouterApi.create(
        ChopperClient(
          interceptors: [
            PathInterceptor(),
            HeadersHanldeInterceptor(),
            LoggerInterceptor(Logger()),
          ],
          converter: XMLConverter(),
        ),
      );
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
