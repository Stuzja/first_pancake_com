part of 'receipt_bloc.dart';

@freezed
class ReceiptEvent with _$ReceiptEvent {
  const factory ReceiptEvent.started(int receiptId) = Started;
  const factory ReceiptEvent.addToFavorites(int receiptId) = AddToFavorites;
  const factory ReceiptEvent.deleteFromFavorites(int receiptId) =
      DeleteFromFavorites;
  const factory ReceiptEvent.deleteReceipt(int receiptId) =
      DeleteReceipt;
}
