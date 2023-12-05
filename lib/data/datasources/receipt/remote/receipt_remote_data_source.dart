import 'package:first_pancake_com/data/models/receipt/receipt_dto.dart';

abstract class ReceiptRemoteDataSource {
  Future<void> addReceipt(final ReceiptDto receiptDto);
}
