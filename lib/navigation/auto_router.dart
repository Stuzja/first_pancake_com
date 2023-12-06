import 'package:auto_route/auto_route.dart';
import 'package:first_pancake_com/navigation/auth_guard.dart';
import 'package:first_pancake_com/presentation/pages/categories_page/categories_page.dart';
import 'package:first_pancake_com/presentation/pages/create_recipe_page/create_recipe_page.dart';
import 'package:first_pancake_com/presentation/pages/enter_code_page/enter_code_page.dart';
import 'package:first_pancake_com/presentation/pages/forgot_password_page/forgot_password_page.dart';
import 'package:first_pancake_com/presentation/pages/main_page/main_page.dart';
import 'package:first_pancake_com/presentation/pages/new_password_page/new_password_page.dart';
import 'package:first_pancake_com/presentation/pages/profile_page/profile_page.dart';
import 'package:first_pancake_com/presentation/pages/receipt_page/receipt_page.dart';
import 'package:first_pancake_com/presentation/pages/search_recipe_page/search_recipe_page.dart';
import 'package:first_pancake_com/presentation/pages/sign_in_page/sign_in_page.dart';
import 'package:first_pancake_com/presentation/pages/sign_up_page/sign_up_page.dart';
import 'package:first_pancake_com/presentation/pages/splash_page/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
    ),
    AutoRoute(
      page: MainPage,
      initial: true,
      guards: [AuthGuard],
    ),
    AutoRoute(
      page: SignInPage,
    ),
    AutoRoute(
      page: SignUpPage,
    ),
    AutoRoute(
      page: ForgotPasswordPage,
    ),
    AutoRoute(
      page: NewPasswordPage,
    ),
    AutoRoute(
      page: EnterCodePage,
    ),
    AutoRoute(
      page: CategoriesPage,
    ),
    AutoRoute(
      page: CreateRecipePage,
    ),
    AutoRoute(
      page: ProfilePage,
    ),
    AutoRoute(
      page: SearchRecipePage,
    ),
    AutoRoute(
      page: ReceiptPage,
    )
  ],
)
class $AutoRouter {}
