import 'package:first_pancake_com/domain/entities/auth/login_model.dart';
import 'package:first_pancake_com/domain/entities/auth/registration_model.dart';

abstract class AuthRepository {
  Future<bool> get isLoggedIn;
  int get userId;
  String? getAccessToken();
  Future<void> refresh();
  Future<void> signUp(RegistrationModel reg);
  Future<void> signIn(LoginModel model);
  Future<void> signOut({bool signOutOnServer = true});
}
