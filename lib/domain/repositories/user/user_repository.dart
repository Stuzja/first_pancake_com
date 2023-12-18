import 'package:first_pancake_com/domain/entities/user/user.dart';

abstract class UserRepository {
  Future<User> getCurrentUser();
  Future<User> getUserById(int userId);
}
