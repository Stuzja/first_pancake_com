// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NetworkErrorDtoImpl _$$NetworkErrorDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$NetworkErrorDtoImpl(
      statusCode: json['statusCode'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$NetworkErrorDtoImplToJson(
        _$NetworkErrorDtoImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'title': instance.title,
    };
