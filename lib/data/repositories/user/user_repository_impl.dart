import 'dart:collection';

import 'package:first_pancake_com/data/datasources/auth/local/auth_local_data_source.dart';
import 'package:first_pancake_com/data/datasources/user/remote/user_remote_data_source.dart';
import 'package:first_pancake_com/domain/entities/user.dart';
import 'package:first_pancake_com/domain/repositories/user/user_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  final AuthLocalDataSource _authLocalDataSource;
  final UserRemoteDataSource _userRemoteDataSource;

  UserRepositoryImpl(this._authLocalDataSource, this._userRemoteDataSource);

  @override
  Future<void> loadCurrentUser(int userId) async {
    final user = await getOneUserById(userId);
    currentUser.add(user);
  }

  Future<User> getOneUserById(int userId) async {
    //TODO
    return User(
      username: "username",
      email: "email",
      password: "password",
    );
  }
}
