part of 'receipt_bloc.dart';

@freezed
class ReceiptEvent with _$ReceiptEvent {
  const factory ReceiptEvent.started() = Started;
  const factory ReceiptEvent.addToFavorites(Receipt receipt) = AddToFavorites;
}
