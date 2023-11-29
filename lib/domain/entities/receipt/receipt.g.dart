// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Receipt _$$_ReceiptFromJson(Map<String, dynamic> json) => _$_Receipt(
      title: json['title'] as String,
      description: json['description'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReceiptToJson(_$_Receipt instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'user': instance.user,
    };
