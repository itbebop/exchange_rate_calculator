import 'package:exchange_rate_calculator/data/data_source/exchange_rate_data_api.dart';
import 'package:exchange_rate_calculator/data/mapper/exchange_rate_mapper.dart';
import 'package:exchange_rate_calculator/data/model/exchange_rate.dart';
import 'package:exchange_rate_calculator/repository/exchange_repository.dart';
import 'package:flutter/widgets.dart';

class ExchangeRepositoryImpl implements ExchangeRepository {
  final ExchangeRateDataApi _api;
  ExchangeRepositoryImpl(this._api);
  @override
  Future<num?> getRate(String baseCode, String relativeCode) async {
    final res = await _api.getRate(baseCode);

    final result = res[relativeCode];
    if (result == null) {
      throw Exception('오류');
    }
    return result;
  }

  @override
  Future<List<String>> getKey(String baseCode) async {
    final res = await _api.getRate(baseCode);
    final keys = res.keys.toList();
    return keys;
  }
}
