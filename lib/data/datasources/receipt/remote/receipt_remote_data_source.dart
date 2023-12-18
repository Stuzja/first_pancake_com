import 'package:first_pancake_com/data/models/receipt/receipt_dto.dart';

abstract class ReceiptRemoteDataSource {
  Future<void> addReceipt(final ReceiptDto receiptDto);

  Future<List<ReceiptDto>> getCurrentUserReceipts();

  Future<List<ReceiptDto>> getAllReceipts();

  Future<ReceiptDto> receiptById(
    int receiptId,
  );

  Future<List<ReceiptDto>> getReceiptsById(
    int userId,
  );
}
