import 'package:first_pancake_com/domain/entities/auth/token.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_dto.freezed.dart';
part 'token_dto.g.dart';

@freezed
class TokenDto with _$TokenDto {
  const factory TokenDto({
    required String token,
  }) = _TokenDto;

  factory TokenDto.fromJson(Map<String, dynamic> json) =>
      _$TokenDtoFromJson(json);
}

extension TokenMapper on TokenDto {
  Token toModel() {
    return Token(
      token: token
    );
  }

  static TokenDto fromModel(Token token) {
    return TokenDto(
      token: token.token
    );
  }
}