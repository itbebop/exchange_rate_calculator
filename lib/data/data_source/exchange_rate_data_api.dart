import 'dart:convert';
import 'package:exchange_rate_calculator/data/mapper/keys.dart';
import 'package:http/http.dart' as http;

class ExchangeRateDataApi {
  final baseUrl = 'https://v6.exchangerate-api.com/v6/';

  Future<Map<String, dynamic>> getRate(String baseCode) async {
    final response = await http.get(Uri.parse('$baseUrl$key/latest/$baseCode'));
    // list<map> 이면 list를 안써주면 안에 통으로 다이나믹으로 인식함.
    // 이거 안써주면
    // e. fromjson ... e가 list 안에 맵이니까 맵이 되어야 하는데 dynamic 으로 인식함
    final Map<String, dynamic> json = response.statusCode == 200 ? jsonDecode(response.body)["conversion_rates"] as Map<String, dynamic> : throw Exception('statusCode:${response.statusCode}');
    return json;
  }
}
