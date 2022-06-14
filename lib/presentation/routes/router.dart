import 'package:auto_route/auto_route.dart';
import 'package:ltemanager2/presentation/pages/home/bands/bands_page.dart';
import 'package:ltemanager2/presentation/pages/home/home_page.dart';
import 'package:ltemanager2/presentation/pages/home/settings/settings_page.dart';
import 'package:ltemanager2/presentation/pages/home/speed/speed_page.dart';
import 'package:ltemanager2/presentation/pages/home/status/status_page.dart';
import 'package:ltemanager2/presentation/pages/sign_in/sign_in_page.dart';
import 'package:ltemanager2/presentation/pages/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(
      page: HomePage,
      children: [
        AutoRoute(
          path: 'bands',
          name: 'BandsRouter',
          page: BandsPage,
        ),
        AutoRoute(
          path: 'speed',
          name: 'SpeedRouter',
          page: SpeedPage,
        ),
        AutoRoute(
          path: 'status',
          name: 'StatusRouter',
          page: StatusPage,
        ),
        AutoRoute(
          path: 'settings',
          name: 'SettingsRouter',
          page: SettingsPage,
        )
      ],
    ),
  ],
)
class $AppRouter {}
