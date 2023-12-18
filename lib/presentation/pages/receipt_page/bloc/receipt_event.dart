part of 'receipt_bloc.dart';

@freezed
class ReceiptEvent with _$ReceiptEvent {
  const factory ReceiptEvent.started(Receipt receipt) = Started;
  const factory ReceiptEvent.addToFavorites(Receipt receipt) = AddToFavorites;
  const factory ReceiptEvent.deleteFromFavorites(Receipt receipt) =
      DeleteFromFavorites;
}
