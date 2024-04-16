import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_rate.freezed.dart';
part 'exchange_rate.g.dart';

@freezed
class ExchangeRate with _$ExchangeRate {
  const factory ExchangeRate({
    required String baseCode,
    required Map<String, num> conversionRates,
  }) = _ExchangeRate;

  factory ExchangeRate.fromJson(Map<String, dynamic> json) =>
      _$ExchangeRateFromJson(json);
}
