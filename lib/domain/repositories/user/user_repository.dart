import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';
import 'package:first_pancake_com/domain/entities/user/user.dart';

abstract class UserRepository {
  Future<User> getCurrentUser();
  Future<User> getUserById(int userId);

  Future<List<User>> getSubscribers();

  Future<List<User>> getSubscriptions();

  Future<bool> isUserSubscribed(int userId);

  Future<void> subscribeUser(int userId);
 
  Future<void> unsubscribeUser(int userId);

  Future<List<Receipt>> getFavourites();
}
