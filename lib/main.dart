import 'package:exchange_rate_calculator/data/data_source/exchange_rate_data_api.dart';
import 'package:exchange_rate_calculator/presentation/exchange_screen.dart';
import 'package:exchange_rate_calculator/presentation/viewModel/exchange_view_model.dart';
import 'package:exchange_rate_calculator/repository/exchange_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

final class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (context) => ExchangeViewModel(exchangeRepositoryImpl: ExchangeRepositoryImpl(ExchangeRateDataApi())),
        child: const ExchangeScreen(),
      ),
    );
  }
}
