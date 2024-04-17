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
  void initState() {
    Future.microtask(() {
      final viewModel = context.read<ExchangeViewModel>();
      viewModel.onFetch();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ExchangeViewModel>();
    print(viewModel.keys);
    return Scaffold(
        appBar: AppBar(
          title: const Text('환율 계산'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text('1 ${viewModel.baseCode} ='),
              Text('${viewModel.rate} ${viewModel.relativeCode}'),
              Text(DateTime.now().toString()),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.width * 0.2,
                    child: TextFormField(
                      controller: _baseTextEditingController,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.width * 0.2,
                    child: DropdownButton(
                        value: '',
                        items: viewModel.keys.map((e) => DropdownMenuItem(child: Text(e))).toList(),
                        onChanged: ((value) {
                          setState(() {});
                        })),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.width * 0.2,
                    child: TextFormField(
                      controller: _relativeTextEditingController,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
