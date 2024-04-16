import 'package:exchange_rate_calculator/data/dto/exchange_rate_dto/ExchangeRateDto.dart';
import 'package:exchange_rate_calculator/data/model/exchange_rate.dart';

extension toExchangeRate on ExchangeRateDto {
  ExchangeRate toExchange() {
    return ExchangeRate(
      baseCode: baseCode ?? '',
      conversionRates: conversionRates ?? {},
    );
  }
}
