import 'package:exchange_rate_calculator/data/model/exchange_rate.dart';

abstract interface class ExchangeRepository {
  Future<ExchangeRate> getRate(String baseCode);
}
