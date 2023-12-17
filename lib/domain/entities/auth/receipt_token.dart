import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_token.freezed.dart';
part 'receipt_token.g.dart';

@freezed
class ReceiptToken with _$ReceiptToken {
  const factory ReceiptToken({
    required String token,
    required int user_id,
    String? profile_image,
  }) = _ReceiptToken;

  factory ReceiptToken.fromJson(Map<String, dynamic> json) =>
      _$ReceiptTokenFromJson(json);
}
