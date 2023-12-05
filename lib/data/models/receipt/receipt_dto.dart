import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';
import 'package:first_pancake_com/domain/entities/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_dto.freezed.dart';
part 'receipt_dto.g.dart';

@freezed
class ReceiptDto with _$ReceiptDto {
  const factory ReceiptDto({
    required String title,
    String? photo,
    String? description,
    User? user,
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
      user: user,
    );
  }

  static ReceiptDto fromModel(Receipt receipt) {
    return ReceiptDto(
      title: receipt.title,
      photo: receipt.photo,
      description: receipt.description,
      user: receipt.user,
    );
  }
}
