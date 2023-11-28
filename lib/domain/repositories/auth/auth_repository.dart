abstract class AuthRepository {
  Future<bool> get isLoggedIn;
  int get userId;
  String? getAccessToken();
  Future<void> refresh();
  Future<void> signIn();
  Future<void> signOut({bool signOutOnServer = true});
}
