// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceiptDtoImpl _$$ReceiptDtoImplFromJson(Map<String, dynamic> json) =>
    _$ReceiptDtoImpl(
      title: json['title'] as String,
      id: json['id'] as int?,
      photo: json['photo'] as String?,
      description: json['description'] as String?,
      created_at: json['created_at'] as String?,
      user_id: json['user_id'] as int?,
      receipt_author: json['receipt_author'] as String?,
    );

Map<String, dynamic> _$$ReceiptDtoImplToJson(_$ReceiptDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'photo': instance.photo,
      'description': instance.description,
      'created_at': instance.created_at,
      'user_id': instance.user_id,
      'receipt_author': instance.receipt_author,
    };
