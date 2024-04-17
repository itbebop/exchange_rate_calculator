import 'package:date_format/date_format.dart';
import 'package:exchange_rate_calculator/presentation/viewModel/exchange_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:timer_builder/timer_builder.dart';

final List<String> _themeMode = <String>[
  'system',
  'dark',
  'light',
];
String selectedTheme = 'system';

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

    final baseTextEditingController = TextEditingController();
    final relativeTextEditingController = TextEditingController();
    return Scaffold(
        backgroundColor: const Color(0xffbecf2f9),
        appBar: AppBar(
          title: Center(
              child: Column(
            children: [
              const Text(
                'Currency Converter',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
              TimerBuilder.periodic(const Duration(seconds: 1), builder: (context) {
                return Text(
                  formatDate(DateTime.now(), [hh, ':', nn, ':', ss, ' ', am]),
                  style: const TextStyle(fontSize: 20),
                );
              })
            ],
          )),
          backgroundColor: const Color(0xffbecf2f9),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            margin: const EdgeInsets.all(50),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Text(
                    '1 ${viewModel.baseCode} = ${viewModel.rate} ${viewModel.relativeCode}',
                    style: const TextStyle(fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: TextFormField(
                          keyboardType: const TextInputType.numberWithOptions(decimal: true),
                          controller: baseTextEditingController,
                          inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp("(\\d+[,.]?[\\d]*)"))], //dot + number
                          onChanged: (value) {
                            relativeTextEditingController.value = relativeTextEditingController.value
                                .copyWith(text: (double.parse(value.isNotEmpty ? value : '0') * (viewModel.rate ?? 0)).toString(), selection: const TextSelection.collapsed(offset: 5));
                          },
                          // controller: _baseTextEditingController,
                        ),
                      ),
                      SizedBox(
                        child: DropdownButton(
                          menuMaxHeight: 500,
                          //itemHeight: null,
                          value: viewModel.baseCode,
                          items: viewModel.keys.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
                          onChanged: (value) {
                            viewModel.changeBaseCode(value!);
                          },
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: TextFormField(
                          keyboardType: const TextInputType.numberWithOptions(decimal: true),
                          controller: relativeTextEditingController,
                          inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp("(\\d+[,.]?[\\d]*)"))],
                          onChanged: (value) {
                            baseTextEditingController.value = baseTextEditingController.value
                                .copyWith(text: (double.parse(value.isNotEmpty ? value : '0') / (viewModel.rate ?? 0)).toString(), selection: const TextSelection.collapsed(offset: 5));
                          },
                          // controller: _relativeTextEditingController,
                        ),
                      ),
                      SizedBox(
                        child: DropdownButton(
                            menuMaxHeight: 300,
                            value: viewModel.relativeCode,
                            items: viewModel.keys.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
                            onChanged: ((value) {
                              viewModel.changeRelativeCode(value!);
                            })),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
