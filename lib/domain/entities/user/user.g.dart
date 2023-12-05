// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      accessLevel: json['accessLevel'] == null
          ? null
          : AccessLevel.fromJson(json['accessLevel'] as Map<String, dynamic>),
      ownRecipes: (json['ownRecipes'] as List<dynamic>?)
          ?.map((e) => Receipt.fromJson(e as Map<String, dynamic>))
          .toList(),
      favourites: (json['favourites'] as List<dynamic>?)
          ?.map((e) => Receipt.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'accessLevel': instance.accessLevel,
      'ownRecipes': instance.ownRecipes,
      'favourites': instance.favourites,
    };
