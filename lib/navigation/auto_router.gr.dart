// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../presentation/pages/enter_code_page/enter_code_page.dart' as _i7;
import '../presentation/pages/forgot_password_page/forgot_password_page.dart'
    as _i5;
import '../presentation/pages/main_page/main_page.dart' as _i2;
import '../presentation/pages/new_password_page/new_password_page.dart' as _i6;
import '../presentation/pages/sign_in_page/sign_in_page.dart' as _i3;
import '../presentation/pages/sign_up_page/sign_up_page.dart' as _i4;
import '../presentation/pages/splash_page/splash_page.dart' as _i1;

class AutoRouter extends _i8.RootStackRouter {
  AutoRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.MainPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SignUpPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ForgotPasswordPage(),
      );
    },
    NewPasswordRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.NewPasswordPage(),
      );
    },
    EnterCodeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.EnterCodePage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          MainRoute.name,
          path: '/main-page',
        ),
        _i8.RouteConfig(
          SignInRoute.name,
          path: '/sign-in-page',
        ),
        _i8.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-page',
        ),
        _i8.RouteConfig(
          ForgotPasswordRoute.name,
          path: '/forgot-password-page',
        ),
        _i8.RouteConfig(
          NewPasswordRoute.name,
          path: '/new-password-page',
        ),
        _i8.RouteConfig(
          EnterCodeRoute.name,
          path: '/enter-code-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: '/main-page',
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i3.SignInPage]
class SignInRoute extends _i8.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in-page',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i4.SignUpPage]
class SignUpRoute extends _i8.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i5.ForgotPasswordPage]
class ForgotPasswordRoute extends _i8.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(
          ForgotPasswordRoute.name,
          path: '/forgot-password-page',
        );

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i6.NewPasswordPage]
class NewPasswordRoute extends _i8.PageRouteInfo<void> {
  const NewPasswordRoute()
      : super(
          NewPasswordRoute.name,
          path: '/new-password-page',
        );

  static const String name = 'NewPasswordRoute';
}

/// generated route for
/// [_i7.EnterCodePage]
class EnterCodeRoute extends _i8.PageRouteInfo<void> {
  const EnterCodeRoute()
      : super(
          EnterCodeRoute.name,
          path: '/enter-code-page',
        );

  static const String name = 'EnterCodeRoute';
}
