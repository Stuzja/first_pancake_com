import 'package:first_pancake_com/data/datasources/auth/local/auth_local_data_source.dart';
import 'package:first_pancake_com/data/datasources/auth/remote/auth_remote_data_source.dart';
import 'package:first_pancake_com/domain/repositories/user/user_repository.dart';
import 'package:first_pancake_com/domain/repositories/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;
  final UserRepository _userRep;

  AuthRepositoryImpl(
    this._authRemoteDataSource,
    this._authLocalDataSource,
    this._userRep,
  );

  @override
  String? getAccessToken() {
    return _authLocalDataSource.getAccessToken();
  }

  @override
  Future<bool> get isLoggedIn async {
    if (_authLocalDataSource.getAccessToken() == null) {
      return false;
    }

    return true;
  }

  @override
  int get userId => _authLocalDataSource.getUserId();

  @override
  Future<void> refresh() async {}

  @override
  Future<void> signIn() async {}

  @override
  Future<void> signOut({bool signOutOnServer = true}) async {}
}
