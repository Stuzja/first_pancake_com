// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
      id: json['id'] as int?,
      username: json['username'] as String,
      email: json['email'] as String,
      subscribers_count: json['subscribers_count'] as int?,
      subscriptions_count: json['subscriptions_count'] as int?,
      receipts_count: json['receipts_count'] as int?,
      favoutite_receipts: json['favoutite_receipts'] as int?,
      profile_image: json['profile_image'] as String?,
    );

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'subscribers_count': instance.subscribers_count,
      'subscriptions_count': instance.subscriptions_count,
      'receipts_count': instance.receipts_count,
      'favoutite_receipts': instance.favoutite_receipts,
      'profile_image': instance.profile_image,
    };
