part of 'receipt_bloc.dart';

@freezed
class ReceiptCommand with _$ReceiptCommand {
  const factory ReceiptCommand.error() = Error;
}