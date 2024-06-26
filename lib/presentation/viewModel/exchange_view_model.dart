import 'package:exchange_rate_calculator/data/data_source/exchange_rate_data_api.dart';
import 'package:exchange_rate_calculator/repository/exchange_repository_impl.dart';
import 'package:flutter/material.dart';

class ExchangeViewModel with ChangeNotifier {
  // 뷰모델이 레포지토리에서 데이터를 가져오기 때문에 거른다음에 뷰에 던짐.
  // 생성을 해줘야 한다.
  final ExchangeRepositoryImpl _exchangeRepositoryImpl;
  ExchangeViewModel({required ExchangeRepositoryImpl exchangeRepositoryImpl}) : _exchangeRepositoryImpl = exchangeRepositoryImpl;

  bool _isLoading = false;
  List<String> keys = [];
  String baseCode = '';
  String relativeCode = '';
  num? rate = 0.0;
  double? baseNum;
  double? relativeNum;

  void onFetch() async {
    baseCode = 'USD';
    relativeCode = 'KRW';
    rate = await _exchangeRepositoryImpl.getRate(baseCode, relativeCode);
    keys = await _exchangeRepositoryImpl.getKey(baseCode);
    notifyListeners();
  }

  void changeRelativeCode(String newRelativeCode) async {
    relativeCode = newRelativeCode;
    rate = await _exchangeRepositoryImpl.getRate(baseCode, relativeCode);
    notifyListeners();
  }

  void changeBaseCode(String newBaseCode) async {
    baseCode = newBaseCode;
    rate = await _exchangeRepositoryImpl.getRate(baseCode, relativeCode);
    notifyListeners();
  }

  void changeRelativeNum(double newRelativeNum) async {
    relativeNum = newRelativeNum;
    baseNum = (relativeNum! * rate!).toDouble();
    notifyListeners();
  }

  void changeBaseNum(double newBaseNum) async {
    baseNum = newBaseNum;
    relativeNum = (baseNum! * rate!).toDouble();
    notifyListeners();
  }

  void onSearch(String baseCode, String relativeCode) async {
    _isLoading = true;
    notifyListeners();

    rate = await _exchangeRepositoryImpl.getRate(baseCode, relativeCode);
    keys = await _exchangeRepositoryImpl.getKey(baseCode);
    _isLoading = false;
    //print('야 우냐? $keys');

    notifyListeners();
  }
}
