import 'package:exchange_rate_calculator/presentation/viewModel/exchange_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class ExchangeScreen extends StatefulWidget {
  const ExchangeScreen({super.key});

  @override
  State<ExchangeScreen> createState() => _ExchangeScreenState();
}

class _ExchangeScreenState extends State<ExchangeScreen> {
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
    print('안나오냐? ${viewModel.baseCode}');
    final _baseTextEditingController =
        TextEditingController(text: viewModel.baseNum.toString());

    final _relativeTextEditingController =
        TextEditingController(text: viewModel.relativeNum.toString());
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextFormField(
                      controller: _baseTextEditingController,
                      // inputFormatters: <TextInputFormatter>[
                      //   FilteringTextInputFormatter.digitsOnly
                      // ],
                      onChanged: (value) =>
                          viewModel.changeBaseNum(double.parse(value)),
                      // controller: _baseTextEditingController,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: DropdownButton(
                        value: viewModel.baseCode,
                        items: viewModel.keys
                            .map((e) =>
                                DropdownMenuItem(value: e, child: Text(e)))
                            .toList(),
                        onChanged: ((value) {
                          viewModel.changeBaseCode(value!);
                        })),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextFormField(
                      controller: _relativeTextEditingController,
                      onChanged: (value) =>
                          viewModel.changeRelativeNum(double.parse(value)),
                      // controller: _relativeTextEditingController,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: DropdownButton(
                        value: viewModel.relativeCode,
                        items: viewModel.keys
                            .map((e) =>
                                DropdownMenuItem(value: e, child: Text(e)))
                            .toList(),
                        onChanged: ((value) {
                          viewModel.changeRelativeCode(value!);
                        })),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
