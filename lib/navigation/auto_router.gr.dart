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
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../domain/entities/receipt/receipt.dart' as _i16;
import '../presentation/pages/categories_page/categories_page.dart' as _i8;
import '../presentation/pages/create_recipe_page/create_recipe_page.dart'
    as _i9;
import '../presentation/pages/enter_code_page/enter_code_page.dart' as _i7;
import '../presentation/pages/favourites_page/favourites_page.dart' as _i15;
import '../presentation/pages/forgot_password_page/forgot_password_page.dart'
    as _i5;
import '../presentation/pages/main_page/main_page.dart' as _i2;
import '../presentation/pages/new_password_page/new_password_page.dart' as _i6;
import '../presentation/pages/new_recipes/new_recipes_page.dart' as _i13;
import '../presentation/pages/profile_page/profile_page.dart' as _i10;
import '../presentation/pages/receipt_page/receipt_page.dart' as _i12;
import '../presentation/pages/search_recipe_page/search_recipe_page.dart'
    as _i11;
import '../presentation/pages/sign_in_page/sign_in_page.dart' as _i3;
import '../presentation/pages/sign_up_page/sign_up_page.dart' as _i4;
import '../presentation/pages/splash_page/splash_page.dart' as _i1;
import 'auth_guard.dart' as _i15;

class AutoRouter extends _i13.RootStackRouter {
  AutoRouter({
    _i14.GlobalKey<_i14.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i15.AuthGuard authGuard;

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.MainPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SignUpPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ForgotPasswordPage(),
      );
    },
    NewPasswordRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.NewPasswordPage(),
      );
    },
    EnterCodeRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.EnterCodePage(),
      );
    },
    CategoriesRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.CategoriesPage(),
      );
    },
    CreateRecipeRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.CreateRecipePage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.ProfilePage(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
    SearchRecipeRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.SearchRecipePage(),
      );
    },
    ReceiptRoute.name: (routeData) {
      final args = routeData.argsAs<ReceiptRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.ReceiptPage(
          key: args.key,
          receiptId: args.receiptId,
        ),
      );
    },
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(
          SplashRoute.name,
          path: '/splash-page',
        ),
        _i13.RouteConfig(
          MainRoute.name,
          path: '/',
          guards: [authGuard],
        ),
        _i13.RouteConfig(
          SignInRoute.name,
          path: '/sign-in-page',
        ),
        _i13.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-page',
        ),
        _i13.RouteConfig(
          ForgotPasswordRoute.name,
          path: '/forgot-password-page',
        ),
        _i13.RouteConfig(
          NewPasswordRoute.name,
          path: '/new-password-page',
        ),
        _i13.RouteConfig(
          EnterCodeRoute.name,
          path: '/enter-code-page',
        ),
        _i13.RouteConfig(
          CategoriesRoute.name,
          path: '/categories-page',
        ),
        _i13.RouteConfig(
          CreateRecipeRoute.name,
          path: '/create-recipe-page',
        ),
        _i13.RouteConfig(
          ProfileRoute.name,
          path: '/profile-page',
        ),
        _i13.RouteConfig(
          SearchRecipeRoute.name,
          path: '/search-recipe-page',
        ),
        _i13.RouteConfig(
          ReceiptRoute.name,
          path: '/receipt-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash-page',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i13.PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: '/',
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i3.SignInPage]
class SignInRoute extends _i13.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in-page',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i4.SignUpPage]
class SignUpRoute extends _i13.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i5.ForgotPasswordPage]
class ForgotPasswordRoute extends _i13.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(
          ForgotPasswordRoute.name,
          path: '/forgot-password-page',
        );

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i6.NewPasswordPage]
class NewPasswordRoute extends _i13.PageRouteInfo<void> {
  const NewPasswordRoute()
      : super(
          NewPasswordRoute.name,
          path: '/new-password-page',
        );

  static const String name = 'NewPasswordRoute';
}

/// generated route for
/// [_i7.EnterCodePage]
class EnterCodeRoute extends _i13.PageRouteInfo<void> {
  const EnterCodeRoute()
      : super(
          EnterCodeRoute.name,
          path: '/enter-code-page',
        );

  static const String name = 'EnterCodeRoute';
}

/// generated route for
/// [_i8.CategoriesPage]
class CategoriesRoute extends _i13.PageRouteInfo<void> {
  const CategoriesRoute()
      : super(
          CategoriesRoute.name,
          path: '/categories-page',
        );

  static const String name = 'CategoriesRoute';
}

/// generated route for
/// [_i9.CreateRecipePage]
class CreateRecipeRoute extends _i13.PageRouteInfo<void> {
  const CreateRecipeRoute()
      : super(
          CreateRecipeRoute.name,
          path: '/create-recipe-page',
        );

  static const String name = 'CreateRecipeRoute';
}

/// generated route for
/// [_i10.ProfilePage]
class ProfileRoute extends _i13.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/profile-page',
          args: ProfileRouteArgs(
            key: key,
            userId: userId,
          ),
        );

  static const String name = 'ProfileRoute';
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    this.userId,
  });

  final _i15.Key? key;

  final int? userId;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i11.SearchRecipePage]
class SearchRecipeRoute extends _i13.PageRouteInfo<void> {
  const SearchRecipeRoute()
      : super(
          SearchRecipeRoute.name,
          path: '/search-recipe-page',
        );

  static const String name = 'SearchRecipeRoute';
}

/// generated route for
/// [_i12.ReceiptPage]
class ReceiptRoute extends _i13.PageRouteInfo<ReceiptRouteArgs> {
  ReceiptRoute({
    _i14.Key? key,
    required _i16.Receipt receipt,
  }) : super(
          ReceiptRoute.name,
          path: '/receipt-page',
          args: ReceiptRouteArgs(
            key: key,
            receiptId: receiptId,
          ),
        );

  static const String name = 'ReceiptRoute';
}

class ReceiptRouteArgs {
  const ReceiptRouteArgs({
    this.key,
    required this.receiptId,
  });

  final _i14.Key? key;

  final _i16.Receipt receipt;

  @override
  String toString() {
    return 'ReceiptRouteArgs{key: $key, receiptId: $receiptId}';
  }
}
