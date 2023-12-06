import 'package:first_pancake_com/data/datasources/auth/local/auth_local_data_source.dart';
import 'package:first_pancake_com/domain/entities/auth/receipt_token.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_token_dto.freezed.dart';
part 'receipt_token_dto.g.dart';

@freezed
class ReceiptTokenDto with _$ReceiptTokenDto {
  const factory ReceiptTokenDto({
    required String token,
    required int user_id,
  }) = _ReceiptTokenDto;

  factory ReceiptTokenDto.fromJson(Map<String, dynamic> json) =>
      _$ReceiptTokenDtoFromJson(json);
}

extension ReceiptTokenMapper on ReceiptTokenDto {
  ReceiptToken toModel() {
    return ReceiptToken(
      token: token,
      user_id: user_id,
    );
  }

  static ReceiptTokenDto fromModel(ReceiptToken token) {
    return ReceiptTokenDto(
      token: token.token,
      user_id: token.user_id,
    );
  }
}