// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_numbers_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserNumbersDataImpl _$$UserNumbersDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserNumbersDataImpl(
      subscribers_count: json['subscribers_count'] as int,
      subscriptions_count: json['subscriptions_count'] as int,
      receipts_count: json['receipts_count'] as int,
    );

Map<String, dynamic> _$$UserNumbersDataImplToJson(
        _$UserNumbersDataImpl instance) =>
    <String, dynamic>{
      'subscribers_count': instance.subscribers_count,
      'subscriptions_count': instance.subscriptions_count,
      'receipts_count': instance.receipts_count,
    };
