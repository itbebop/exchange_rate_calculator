import 'package:exchange_rate_calculator/data/model/exchange_rate.dart';

abstract interface class ExchangeRepository {
  Future<dynamic> getRate(String baseCode, String relativeCode);
}
