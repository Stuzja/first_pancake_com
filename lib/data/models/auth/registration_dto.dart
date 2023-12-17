import 'package:first_pancake_com/domain/entities/auth/registration_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_dto.freezed.dart';
part 'registration_dto.g.dart';

@freezed
class RegistrationDto with _$RegistrationDto {
  const factory RegistrationDto({
    required String email,
    required String username,
    required String password,
    String? profile_image,
  }) = _RegistrationDto;

  factory RegistrationDto.fromJson(Map<String, dynamic> json) =>
      _$RegistrationDtoFromJson(json);
}

extension RegistrationMapper on RegistrationDto {
  RegistrationModel toModel() {
    return RegistrationModel(
      email: email,
      username: username,
      password: password,
      profile_image: profile_image,
    );
  }

  static RegistrationDto fromModel(RegistrationModel reg) {
    return RegistrationDto(
      email: reg.email,
      username: reg.username,
      password: reg.password,
      profile_image: reg.profile_image,
    );
  }
}
