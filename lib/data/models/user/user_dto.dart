import 'package:first_pancake_com/domain/entities/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    int? user_id,
    required String username,
    required String email,
    int? subscribers_count,
    int? subscriptions_count,
    int? receipts_count,
    int? favoutite_receipts,
    String? profile_image,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

extension UserMapper on UserDto {
  User toModel() {
    return User(
      id: user_id,
      username: username,
      email: email,
      subscribersCount: subscribers_count,
      subscriptions_count: subscribers_count,
      receiptsCount: receipts_count,
      favouritesCount: favoutite_receipts,
      profile_image: profile_image,
    );
  }

  static UserDto fromModel(User user) {
    return UserDto(
      user_id: user.id,
      username: user.username,
      email: user.email,
      subscribers_count: user.subscribersCount,
      receipts_count: user.receiptsCount,
      favoutite_receipts: user.favouritesCount,
      profile_image: user.profile_image,
      subscriptions_count: user.subscriptions_count,
    );
  }
}
