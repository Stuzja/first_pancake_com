// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceiptDtoImpl _$$ReceiptDtoImplFromJson(Map<String, dynamic> json) =>
    _$ReceiptDtoImpl(
      title: json['title'] as String,
      photo: json['photo'] as String?,
      description: json['description'] as String?,
      created_at: json['created_at'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$ReceiptDtoImplToJson(_$ReceiptDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'photo': instance.photo,
      'description': instance.description,
      'created_at': instance.created_at,
      'id': instance.id,
    };
