// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as int?,
      username: json['username'] as String,
      email: json['email'] as String,
      subscribersCount: json['subscribersCount'] as int?,
      receiptsCount: json['receiptsCount'] as int?,
      favouritesCount: json['favouritesCount'] as int?,
      profile_image: json['profile_image'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'subscribersCount': instance.subscribersCount,
      'receiptsCount': instance.receiptsCount,
      'favouritesCount': instance.favouritesCount,
      'profile_image': instance.profile_image,
    };
