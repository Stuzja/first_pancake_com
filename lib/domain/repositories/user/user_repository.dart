import 'package:first_pancake_com/data/models/receipt/receipt_dto.dart';
import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';
import 'package:first_pancake_com/domain/entities/user/user.dart';

abstract class UserRepository {
  Future<User> getCurrentUser();
  Future<User> getUserById(int userId);

  Future<List<User>> getSubscribers();

  Future<List<User>> getSubscriptions();

  Future<List<Receipt>> getFavourites();

  Future<void> addProfileImage(String profileImage);

  Future<void> deleteProfileImage();
}
