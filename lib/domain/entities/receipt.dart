import 'package:first_pancake_com/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt.freezed.dart';

part 'receipt.g.dart';

@freezed
class Receipt with _$Receipt {
  const factory Receipt({
    required String title,
    // required Photo photo,
    String? description,
    User? user,
    // List<Category>? categories,
    // @Default(false) bool marked,
    // subscriptions
  }) = _Receipt;

  factory Receipt.fromJson(Map<String, dynamic> json) =>
      _$ReceiptFromJson(json);
}
