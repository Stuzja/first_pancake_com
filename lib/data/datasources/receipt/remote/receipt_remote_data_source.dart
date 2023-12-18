import 'package:first_pancake_com/data/models/receipt/receipt_dto.dart';
import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';

abstract class ReceiptRemoteDataSource {
  Future<void> addReceipt(final ReceiptDto receiptDto);

  Future<List<ReceiptDto>> getCurrentUserReceipts();

  Future<List<ReceiptDto>> getAllReceipts();

  Future<void> addToFavourites(
    int recipeId,
  );

  Future<void> deleteFromFavourites(
    int recipeId,
  );
}
