import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';

abstract class ReceiptRepository {
  Future<void> addReceipt(Receipt receipt) async {}

  Future<List<Receipt>> getCurrentUserReceipts();

  Future<List<Receipt>> getAllReceipts();

  Future<Receipt> getReceiptById(int receiptId);

  Future<List<Receipt>> getReceiptsById(int userId);

  Future<List<Receipt>> getSubscriptionsReceipts();
}
