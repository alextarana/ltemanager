// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../pages/home/bands/bands_page.dart' as _i4;
import '../pages/home/home_page.dart' as _i3;
import '../pages/home/settings/settings_page.dart' as _i7;
import '../pages/home/speed/speed_page.dart' as _i5;
import '../pages/home/status/status_page.dart' as _i6;
import '../pages/sign_in/sign_in_page.dart' as _i2;
import '../pages/splash/splash_page.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    BandsRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.BandsPage());
    },
    SpeedRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SpeedPage());
    },
    StatusRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.StatusPage());
    },
    SettingsRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SettingsPage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(SplashRoute.name, path: '/'),
        _i8.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i8.RouteConfig(HomeRoute.name, path: '/home-page', children: [
          _i8.RouteConfig(BandsRouter.name,
              path: 'bands', parent: HomeRoute.name),
          _i8.RouteConfig(SpeedRouter.name,
              path: 'speed', parent: HomeRoute.name),
          _i8.RouteConfig(StatusRouter.name,
              path: 'status', parent: HomeRoute.name),
          _i8.RouteConfig(SettingsRouter.name,
              path: 'settings', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i8.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/home-page', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.BandsPage]
class BandsRouter extends _i8.PageRouteInfo<void> {
  const BandsRouter() : super(BandsRouter.name, path: 'bands');

  static const String name = 'BandsRouter';
}

/// generated route for
/// [_i5.SpeedPage]
class SpeedRouter extends _i8.PageRouteInfo<void> {
  const SpeedRouter() : super(SpeedRouter.name, path: 'speed');

  static const String name = 'SpeedRouter';
}

/// generated route for
/// [_i6.StatusPage]
class StatusRouter extends _i8.PageRouteInfo<void> {
  const StatusRouter() : super(StatusRouter.name, path: 'status');

  static const String name = 'StatusRouter';
}

/// generated route for
/// [_i7.SettingsPage]
class SettingsRouter extends _i8.PageRouteInfo<void> {
  const SettingsRouter() : super(SettingsRouter.name, path: 'settings');

  static const String name = 'SettingsRouter';
}
