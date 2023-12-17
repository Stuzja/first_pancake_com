import 'package:first_pancake_com/data/models/user/user_dto.dart';

abstract class UserRemoteDataSource {
  Future<UserDto> getCurrentUser();

  Future<List<UserDto>> getSubscribers();

  Future<List<UserDto>> getSubscriptions();
}
