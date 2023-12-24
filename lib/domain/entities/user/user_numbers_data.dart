import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_numbers_data.freezed.dart';

part 'user_numbers_data.g.dart';

@freezed
class UserNumbersData with _$UserNumbersData {
  const factory UserNumbersData({
    required int subscribers_count,
    required int subscriptions_count,
    required int receipts_count,
  }) = _UserNumbersData;

  factory UserNumbersData.fromJson(Map<String, dynamic> json) =>
      _$UserNumbersDataFromJson(json);
}
