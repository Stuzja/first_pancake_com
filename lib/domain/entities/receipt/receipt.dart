import 'package:first_pancake_com/domain/entities/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt.freezed.dart';

part 'receipt.g.dart';

@freezed
class Receipt with _$Receipt {
  const factory Receipt({
    required String title,
    String? photo,
    String? description,
  }) = _Receipt;

  factory Receipt.fromJson(Map<String, dynamic> json) =>
      _$ReceiptFromJson(json);
}
