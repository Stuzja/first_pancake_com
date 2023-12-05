import 'package:first_pancake_com/domain/entities/user/user.dart';
import 'package:rxdart/rxdart.dart';

abstract class UserRepository {
  final currentUser = BehaviorSubject<User>();
  Future<void> loadCurrentUser(int userId);
}
