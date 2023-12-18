part of 'receipt_bloc.dart';

@freezed
class ReceiptState with _$ReceiptState {
  const factory ReceiptState.loading() = Loading;
  const factory ReceiptState.loaded(Receipt receipt) = Loaded;
}
