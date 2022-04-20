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

import '../../../authentication/presentation/logIn/email_confirm.dart' as _i3;
import '../../../authentication/presentation/logIn/log_in_page.dart' as _i2;
import '../../../authentication/presentation/logIn/verify_page.dart' as _i4;
import '../../../authentication/presentation/logIn/welcome_page.dart' as _i5;
import '../../../authentication/presentation/signUp/sign_up_page.dart' as _i1;
import '../../../dashboard/d_profile/presentation/profile_setting.dart' as _i7;
import '../../../dashboard/presentation/dashboard_page.dart' as _i6;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SignUpRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SignUpPage());
    },
    LogInRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LogInPage());
    },
    EmailConfirmRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmailConfirmPage());
    },
    VerifyCodeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.VerifyCodePage());
    },
    WelcomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.WelcomePage());
    },
    DashBoardRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.DashBoardPage());
    },
    ProfileSettingRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ProfileSettingPage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(SignUpRoute.name, path: '/'),
        _i8.RouteConfig(LogInRoute.name, path: '/log-in-page'),
        _i8.RouteConfig(EmailConfirmRoute.name, path: '/email-confirm-page'),
        _i8.RouteConfig(VerifyCodeRoute.name, path: '/verify-code-page'),
        _i8.RouteConfig(WelcomeRoute.name, path: '/welcome-page'),
        _i8.RouteConfig(DashBoardRoute.name, path: '/dash-board-page'),
        _i8.RouteConfig(ProfileSettingRoute.name, path: '/profile-setting-page')
      ];
}

/// generated route for
/// [_i1.SignUpPage]
class SignUpRoute extends _i8.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i2.LogInPage]
class LogInRoute extends _i8.PageRouteInfo<void> {
  const LogInRoute() : super(LogInRoute.name, path: '/log-in-page');

  static const String name = 'LogInRoute';
}

/// generated route for
/// [_i3.EmailConfirmPage]
class EmailConfirmRoute extends _i8.PageRouteInfo<void> {
  const EmailConfirmRoute()
      : super(EmailConfirmRoute.name, path: '/email-confirm-page');

  static const String name = 'EmailConfirmRoute';
}

/// generated route for
/// [_i4.VerifyCodePage]
class VerifyCodeRoute extends _i8.PageRouteInfo<void> {
  const VerifyCodeRoute()
      : super(VerifyCodeRoute.name, path: '/verify-code-page');

  static const String name = 'VerifyCodeRoute';
}

/// generated route for
/// [_i5.WelcomePage]
class WelcomeRoute extends _i8.PageRouteInfo<void> {
  const WelcomeRoute() : super(WelcomeRoute.name, path: '/welcome-page');

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [_i6.DashBoardPage]
class DashBoardRoute extends _i8.PageRouteInfo<void> {
  const DashBoardRoute() : super(DashBoardRoute.name, path: '/dash-board-page');

  static const String name = 'DashBoardRoute';
}

/// generated route for
/// [_i7.ProfileSettingPage]
class ProfileSettingRoute extends _i8.PageRouteInfo<void> {
  const ProfileSettingRoute()
      : super(ProfileSettingRoute.name, path: '/profile-setting-page');

  static const String name = 'ProfileSettingRoute';
}
