// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationDtoImpl _$$RegistrationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationDtoImpl(
      email: json['email'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$RegistrationDtoImplToJson(
        _$RegistrationDtoImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
    };
