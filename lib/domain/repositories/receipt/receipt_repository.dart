import 'package:first_pancake_com/domain/entities/auth/login_model.dart';
import 'package:first_pancake_com/domain/entities/auth/registration_model.dart';
import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';

abstract class ReceiptRepository {
  Future<void> addReceipt(Receipt receipt) async {}

  Future<List<Receipt>> getCurrentUserReceipts();

  Future<List<Receipt>> getAllReceipts();

  Future<Receipt> getReceiptById();

  Future<void> addToFavorites(Receipt receipt) async {}

  Future<void> deleteFromFavourites(Receipt receipt) async {}
  Future<Receipt> getReceiptById(int receiptId);

  Future<List<Receipt>> getReceiptsById(int userId);
}
