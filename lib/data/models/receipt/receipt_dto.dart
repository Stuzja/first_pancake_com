import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';
import 'package:first_pancake_com/domain/entities/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_dto.freezed.dart';
part 'receipt_dto.g.dart';

@freezed
class ReceiptDto with _$ReceiptDto {
  const factory ReceiptDto({
    required String title,
    int? id,
    String? photo,
    String? description,
    String? created_at,
    int? user_id,
    String? receipt_author,
  }) = _ReceiptDto;

  factory ReceiptDto.fromJson(Map<String, dynamic> json) =>
      _$ReceiptDtoFromJson(json);
}

extension ReceiptMapper on ReceiptDto {
  Receipt toModel() {
    return Receipt(
      title: title,
      photo: photo,
      description: description,
      timeStamp: created_at,
      user_id: user_id,
      receipt_author: receipt_author,
      id: id,
    );
  }

  static ReceiptDto fromModel(Receipt receipt) {
    return ReceiptDto(
      title: receipt.title,
      photo: receipt.photo,
      description: receipt.description,
      created_at: receipt.timeStamp,
      user_id: receipt.user_id,
      receipt_author: receipt.receipt_author,
      id: receipt.id,
    );
  }
}
