// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceiptTokenImpl _$$ReceiptTokenImplFromJson(Map<String, dynamic> json) =>
    _$ReceiptTokenImpl(
      token: json['token'] as String,
      user_id: json['user_id'] as int,
      profile_image: json['profile_image'] as String?,
    );

Map<String, dynamic> _$$ReceiptTokenImplToJson(_$ReceiptTokenImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user_id': instance.user_id,
      'profile_image': instance.profile_image,
    };
