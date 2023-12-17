import 'package:first_pancake_com/domain/entities/access_level/access_level.dart';
import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';
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
    int? receiptsCount,
    int? favouritesCount,
    String? profile_image,
    // subscribers
    // subscriptions
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
