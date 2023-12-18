import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    int? id,
    required String username,
    required String email,
    int? subscribersCount,
    int? subscriptions_count,
    int? receiptsCount,
    int? favouritesCount,
    String? profile_image,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
