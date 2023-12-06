import 'package:auto_route/auto_route.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/domain/repositories/auth/auth_repository.dart';
import 'package:first_pancake_com/navigation/auto_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final _authRepo = getIt<AuthRepository>();
    if (await _authRepo.isLoggedIn) {
      try {
        //await _userRepo.loadCurrentUser(_authRepo.userId);
        resolver.next(true);
        return;
      } catch (e) {
        router.push(const SplashRoute());
      }
    } else {
      router.push(const SplashRoute());
    }
  }
}
