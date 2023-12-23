import 'package:first_pancake_com/data/models/receipt/receipt_dto.dart';
import 'package:first_pancake_com/data/models/user/user_dto.dart';
import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';

abstract class UserRemoteDataSource {
  Future<UserDto> getCurrentUser();

  Future<UserDto> getUserById(
    final int userId,
  );

  Future<List<UserDto>> getSubscribers();

  Future<List<UserDto>> getSubscriptions();

  Future<List<ReceiptDto>> getFavourites();
}
