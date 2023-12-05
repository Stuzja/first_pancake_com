// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
      user_id: json['user_id'] as int?,
      username: json['username'] as String,
      email: json['email'] as String,
      subscribers_count: json['subscribers_count'] as int?,
      receipts_count: json['receipts_count'] as int?,
      favoutite_receipts: json['favoutite_receipts'] as int?,
    );

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'username': instance.username,
      'email': instance.email,
      'subscribers_count': instance.subscribers_count,
      'receipts_count': instance.receipts_count,
      'favoutite_receipts': instance.favoutite_receipts,
    };
