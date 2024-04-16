import 'dart:convert';

import 'package:exchange_rate_calculator/data/dto/exchange_rate_dto/exchange_rate_dto.dart';
import 'package:http/http.dart' as http;

class ExchangeRateDataApi {
  final baseUrl = 'https://v6.exchangerate-api.com/v6/';
  final _key = 'bb5cfff7b5f27b96270db91b';

  Future<ExchangeRateDto> getRate(String baseCode) async {
    final response = await http.get(Uri.parse('$baseUrl$_key/latest/$baseCode'));
    final json = response.statusCode == 200 ? jsonDecode(response.body) : throw Exception('statusCode:${response.statusCode}');

    // return ExchangeRate.fromJson(json);
  }
}
