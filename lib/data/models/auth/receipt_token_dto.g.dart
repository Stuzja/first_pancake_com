// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_token_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceiptTokenDtoImpl _$$ReceiptTokenDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ReceiptTokenDtoImpl(
      token: json['token'] as String,
      user_id: json['user_id'] as int,
    );

Map<String, dynamic> _$$ReceiptTokenDtoImplToJson(
        _$ReceiptTokenDtoImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user_id': instance.user_id,
    };
