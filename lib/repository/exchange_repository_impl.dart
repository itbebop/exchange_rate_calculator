import 'package:exchange_rate_calculator/data/data_source/exchange_rate_data_api.dart';
import 'package:exchange_rate_calculator/data/mapper/exchange_rate_mapper.dart';
import 'package:exchange_rate_calculator/data/model/exchange_rate.dart';
import 'package:exchange_rate_calculator/repository/exchange_repository.dart';

class ExchangeRepositoryImpl implements ExchangeRepository {
  final ExchangeRateDataApi _api;
  ExchangeRepositoryImpl(this._api);
  @override
  Future<dynamic> getRate(String baseCode, String relativeCode) async {
    final res = await _api.getRate(baseCode);
    return res[relativeCode];
  }
}
