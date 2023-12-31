part of 'receipt_bloc.dart';

@freezed
class ReceiptCommand with _$ReceiptCommand {
  const factory ReceiptCommand.error() = Error;
  const factory ReceiptCommand.favorite() = Favorite;
  const factory ReceiptCommand.notFavorite() = NotFavorite;
  const factory ReceiptCommand.deleted() = Deleted;
}
