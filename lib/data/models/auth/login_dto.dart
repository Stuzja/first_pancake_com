import 'package:first_pancake_com/domain/entities/auth/login_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_dto.freezed.dart';
part 'login_dto.g.dart';

@freezed
class LoginDto with _$LoginDto {
  const factory LoginDto({
    required String email,
    required String password,
  }) = _LoginDto;

  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);
}

extension LoginMapper on LoginDto {
  LoginModel toModel() {
    return LoginModel(
      email: email,
      password: password
    );
  }

  static LoginDto fromModel(LoginModel log) {
    return LoginDto(
      email: log.email,
      password: log.password
    );
  }
}