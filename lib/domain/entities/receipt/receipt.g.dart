// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceiptImpl _$$ReceiptImplFromJson(Map<String, dynamic> json) =>
    _$ReceiptImpl(
      title: json['title'] as String,
      photo: json['photo'] as String?,
      description: json['description'] as String?,
      timeStamp: json['timeStamp'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$ReceiptImplToJson(_$ReceiptImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'photo': instance.photo,
      'description': instance.description,
      'timeStamp': instance.timeStamp,
      'id': instance.id,
    };
