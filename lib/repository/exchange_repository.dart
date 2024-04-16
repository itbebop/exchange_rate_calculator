import 'package:exchange_rate_calculator/data/model/exchange_rate.dart';

abstract interface class ExchangeRepository {
  Future<num?> getRate(String baseCode, String relativeCode);
  Future<List<String>> getKey(String baseCode);
}
