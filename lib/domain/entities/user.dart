import 'package:first_pancake_com/domain/entities/access_level.dart';
import 'package:first_pancake_com/domain/entities/receipt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String username,
    // photo,
    required String email,
    required String password,
    AccessLevel? accessLevel,
    List<Receipt>? ownRecipes,
    List<Receipt>? favourites,
    // subscribers
    // subscriptions
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
