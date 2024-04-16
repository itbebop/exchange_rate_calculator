import 'package:exchange_rate_calculator/presentation/viewModel/exchange_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExchangeScreen extends StatefulWidget {
  const ExchangeScreen({super.key});

  @override
  State<ExchangeScreen> createState() => _ExchangeScreenState();
}

class _ExchangeScreenState extends State<ExchangeScreen> {
  final _baseTextEditingController = TextEditingController();
  final _relativeTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ExchangeViewModel>();
    return Scaffold(
        appBar: AppBar(
          title: const Text('환율 계산'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text(''),
              const Text(''),
              const Text('시간'),
              Row(
                children: [
                  TextFormField(
                    controller: _baseTextEditingController,
                  ),
                  DropdownButton(
                      items: viewModel.keys.map((e) => DropdownMenuItem(child: Text(e))).toList(),
                      onChanged: ((value) {
                        print(value);
                      }))
                ],
              ),
              Row(
                children: [
                  TextFormField(
                    controller: _relativeTextEditingController,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
