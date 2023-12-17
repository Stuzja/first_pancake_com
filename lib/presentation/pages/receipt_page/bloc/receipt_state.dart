part of 'receipt_bloc.dart';

@freezed
class ReceiptState with _$ReceiptState {
  const factory ReceiptState.initial() = Initial;
  const factory ReceiptState.loading() = Loading;
}
