import 'package:first_pancake_com/data/models/user/user_dto.dart';

abstract class UserRemoteDataSource {
  Future<UserDto> getCurrentUser();
}
