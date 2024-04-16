import 'package:exchange_rate_calculator/data/model/exchange_rate.dart';
import 'package:exchange_rate_calculator/repository/exchange_repository.dart';

class ExchangeRepositoryImpl implements ExchangeRepository {
  @override
  Future<ExchangeRate> getRate(String baseCode) {
    throw UnimplementedError();
  }
}
