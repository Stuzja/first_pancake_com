import 'dart:collection';
import 'dart:developer';

import 'package:first_pancake_com/data/datasources/auth/local/auth_local_data_source.dart';
import 'package:first_pancake_com/data/datasources/user/remote/user_remote_data_source.dart';
import 'package:first_pancake_com/data/models/receipt/receipt_dto.dart';
import 'package:first_pancake_com/data/models/user/user_dto.dart';
import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';
import 'package:first_pancake_com/domain/entities/user/user.dart';
import 'package:first_pancake_com/domain/repositories/user/user_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  final AuthLocalDataSource _authLocalDataSource;
  final UserRemoteDataSource _userRemoteDataSource;
  final SharedPreferences _prefs;

  UserRepositoryImpl(
    this._authLocalDataSource,
    this._userRemoteDataSource,
    this._prefs,
  );

  @override
  Future<User> getCurrentUser() async {
    final currentUserId = _prefs.get('UserId');
    final UserDto userDto = await _userRemoteDataSource.getCurrentUser();
    final User user = userDto.toModel();
    return user;
  }

  @override
  Future<List<User>> getSubscribers() async {
    List<User> models = [];
    final dtoList = await _userRemoteDataSource.getSubscribers();
    for (int i = 0; i < dtoList.length; i++) {
      models.add(dtoList[i].toModel());
    }
    return models;
  }

  @override
  Future<List<User>> getSubscriptions() async {
    List<User> models = [];
    final dtoList = await _userRemoteDataSource.getSubscriptions();
    for (int i = 0; i < dtoList.length; i++) {
      models.add(dtoList[i].toModel());
    }
    return models;
  }

  @override
  Future<List<Receipt>> getFavourites() async {
    final List<Receipt> models = [];
    final dtoList = await _userRemoteDataSource.getFavourites();
    for (int i = 0; i < dtoList.length; i++) {
      models.add(dtoList[i].toModel());
    }
    return models;
  }
}
