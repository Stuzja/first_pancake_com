import 'package:first_pancake_com/domain/entities/user/user_numbers_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_numbers_data_dto.freezed.dart';
part 'user_numbers_data_dto.g.dart';

@freezed
class UserNumbersDataDto with _$UserNumbersDataDto {
  const factory UserNumbersDataDto({
    required int subscribers_count,
    required int subscriptions_count,
    required int receipts_count,
  }) = _UserNumbersDataDto;

  factory UserNumbersDataDto.fromJson(Map<String, dynamic> json) =>
      _$UserNumbersDataDtoFromJson(json);
}

extension UserNumbersDataMapper on UserNumbersDataDto {
  UserNumbersData toModel() {
    return UserNumbersData(
      subscribers_count: subscribers_count,
      subscriptions_count: subscriptions_count,
      receipts_count: receipts_count,
    );
  }

  static UserNumbersDataDto fromModel(UserNumbersData user) {
    return UserNumbersDataDto(
      subscribers_count: user.subscribers_count,
      subscriptions_count: user.subscriptions_count,
      receipts_count: user.receipts_count,
    );
  }
}
