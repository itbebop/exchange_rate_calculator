// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExchangeRateImpl _$$ExchangeRateImplFromJson(Map<String, dynamic> json) =>
    _$ExchangeRateImpl(
      baseCode: json['baseCode'] as String,
      conversionRates: Map<String, num>.from(json['conversionRates'] as Map),
    );

Map<String, dynamic> _$$ExchangeRateImplToJson(_$ExchangeRateImpl instance) =>
    <String, dynamic>{
      'baseCode': instance.baseCode,
      'conversionRates': instance.conversionRates,
    };
