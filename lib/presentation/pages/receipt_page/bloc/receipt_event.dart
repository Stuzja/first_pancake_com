part of 'receipt_bloc.dart';

@freezed
class ReceiptEvent with _$ReceiptEvent {
  const factory ReceiptEvent.started(int receiptId) = Started;
}