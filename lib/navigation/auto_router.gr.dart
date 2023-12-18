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
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;

import '../presentation/pages/categories_page/categories_page.dart' as _i8;
import '../presentation/pages/create_recipe_page/create_recipe_page.dart'
    as _i9;
import '../presentation/pages/enter_code_page/enter_code_page.dart' as _i7;
import '../presentation/pages/favourites_page/favourites_page.dart' as _i16;
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
import '../presentation/pages/subscribers_page/subscribers_page.dart' as _i14;
import '../presentation/pages/subscriptions_page/subscriptions_page.dart'
    as _i15;
import 'auth_guard.dart' as _i19;

class AutoRouter extends _i17.RootStackRouter {
  AutoRouter({
    _i18.GlobalKey<_i18.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i19.AuthGuard authGuard;

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.MainPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SignUpPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ForgotPasswordPage(),
      );
    },
    NewPasswordRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.NewPasswordPage(),
      );
    },
    EnterCodeRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.EnterCodePage(),
      );
    },
    CategoriesRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.CategoriesPage(),
      );
    },
    CreateRecipeRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.CreateRecipePage(),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => const ProfileRouteArgs());
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.ProfilePage(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
    SearchRecipeRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.SearchRecipePage(),
      );
    },
    ReceiptRoute.name: (routeData) {
      final args = routeData.argsAs<ReceiptRouteArgs>();
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.ReceiptPage(
          key: args.key,
          receiptId: args.receiptId,
        ),
      );
    },
    NewRecipesRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.NewRecipesPage(),
      );
    },
    SubscribersRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.SubscribersPage(),
      );
    },
    SubscriptionsRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.SubscriptionsPage(),
      );
    },
    FavouritesRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.FavouritesPage(),
      );
    },
  };

  @override
  List<_i17.RouteConfig> get routes => [
        _i17.RouteConfig(
          SplashRoute.name,
          path: '/splash-page',
        ),
        _i17.RouteConfig(
          MainRoute.name,
          path: '/',
          guards: [authGuard],
        ),
        _i17.RouteConfig(
          SignInRoute.name,
          path: '/sign-in-page',
        ),
        _i17.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-page',
        ),
        _i17.RouteConfig(
          ForgotPasswordRoute.name,
          path: '/forgot-password-page',
        ),
        _i17.RouteConfig(
          NewPasswordRoute.name,
          path: '/new-password-page',
        ),
        _i17.RouteConfig(
          EnterCodeRoute.name,
          path: '/enter-code-page',
        ),
        _i17.RouteConfig(
          CategoriesRoute.name,
          path: '/categories-page',
        ),
        _i17.RouteConfig(
          CreateRecipeRoute.name,
          path: '/create-recipe-page',
        ),
        _i17.RouteConfig(
          ProfileRoute.name,
          path: '/profile-page',
        ),
        _i17.RouteConfig(
          SearchRecipeRoute.name,
          path: '/search-recipe-page',
        ),
        _i17.RouteConfig(
          ReceiptRoute.name,
          path: '/receipt-page',
        ),
        _i17.RouteConfig(
          NewRecipesRoute.name,
          path: '/new-recipes-page',
        ),
        _i17.RouteConfig(
          SubscribersRoute.name,
          path: '/subscribers-page',
        ),
        _i17.RouteConfig(
          SubscriptionsRoute.name,
          path: '/subscriptions-page',
        ),
        _i17.RouteConfig(
          FavouritesRoute.name,
          path: '/favourites-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i17.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash-page',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i17.PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: '/',
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i3.SignInPage]
class SignInRoute extends _i17.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in-page',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i4.SignUpPage]
class SignUpRoute extends _i17.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i5.ForgotPasswordPage]
class ForgotPasswordRoute extends _i17.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(
          ForgotPasswordRoute.name,
          path: '/forgot-password-page',
        );

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i6.NewPasswordPage]
class NewPasswordRoute extends _i17.PageRouteInfo<void> {
  const NewPasswordRoute()
      : super(
          NewPasswordRoute.name,
          path: '/new-password-page',
        );

  static const String name = 'NewPasswordRoute';
}

/// generated route for
/// [_i7.EnterCodePage]
class EnterCodeRoute extends _i17.PageRouteInfo<void> {
  const EnterCodeRoute()
      : super(
          EnterCodeRoute.name,
          path: '/enter-code-page',
        );

  static const String name = 'EnterCodeRoute';
}

/// generated route for
/// [_i8.CategoriesPage]
class CategoriesRoute extends _i17.PageRouteInfo<void> {
  const CategoriesRoute()
      : super(
          CategoriesRoute.name,
          path: '/categories-page',
        );

  static const String name = 'CategoriesRoute';
}

/// generated route for
/// [_i9.CreateRecipePage]
class CreateRecipeRoute extends _i17.PageRouteInfo<void> {
  const CreateRecipeRoute()
      : super(
          CreateRecipeRoute.name,
          path: '/create-recipe-page',
        );

  static const String name = 'CreateRecipeRoute';
}

/// generated route for
/// [_i10.ProfilePage]
class ProfileRoute extends _i17.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i18.Key? key,
    int? userId,
  }) : super(
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

  final _i18.Key? key;

  final int? userId;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i11.SearchRecipePage]
class SearchRecipeRoute extends _i17.PageRouteInfo<void> {
  const SearchRecipeRoute()
      : super(
          SearchRecipeRoute.name,
          path: '/search-recipe-page',
        );

  static const String name = 'SearchRecipeRoute';
}

/// generated route for
/// [_i12.ReceiptPage]
class ReceiptRoute extends _i17.PageRouteInfo<ReceiptRouteArgs> {
  ReceiptRoute({
    _i18.Key? key,
    required int receiptId,
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

  final _i18.Key? key;

  final int receiptId;

  @override
  String toString() {
    return 'ReceiptRouteArgs{key: $key, receiptId: $receiptId}';
  }
}

/// generated route for
/// [_i13.NewRecipesPage]
class NewRecipesRoute extends _i17.PageRouteInfo<void> {
  const NewRecipesRoute()
      : super(
          NewRecipesRoute.name,
          path: '/new-recipes-page',
        );

  static const String name = 'NewRecipesRoute';
}

/// generated route for
/// [_i14.SubscribersPage]
class SubscribersRoute extends _i17.PageRouteInfo<void> {
  const SubscribersRoute()
      : super(
          SubscribersRoute.name,
          path: '/subscribers-page',
        );

  static const String name = 'SubscribersRoute';
}

/// generated route for
/// [_i15.SubscriptionsPage]
class SubscriptionsRoute extends _i17.PageRouteInfo<void> {
  const SubscriptionsRoute()
      : super(
          SubscriptionsRoute.name,
          path: '/subscriptions-page',
        );

  static const String name = 'SubscriptionsRoute';
}

/// generated route for
/// [_i16.FavouritesPage]
class FavouritesRoute extends _i17.PageRouteInfo<void> {
  const FavouritesRoute()
      : super(
          FavouritesRoute.name,
          path: '/favourites-page',
        );

  static const String name = 'FavouritesRoute';
}
