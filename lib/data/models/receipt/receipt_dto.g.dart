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
    );

Map<String, dynamic> _$$ReceiptDtoImplToJson(_$ReceiptDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'photo': instance.photo,
      'description': instance.description,
    };