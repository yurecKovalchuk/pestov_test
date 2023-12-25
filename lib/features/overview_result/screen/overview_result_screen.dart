import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:pie_chart/pie_chart.dart';

import 'package:pestov_test/app/app.dart';
import '../bloc/overview_result_bloc.dart';
import '../extensions/extensions.dart';

class OverviewResultScreen extends StatefulWidget {
  const OverviewResultScreen({super.key});

  @override
  State<OverviewResultScreen> createState() => _OverviewResultScreenState();
}

class _OverviewResultScreenState extends State<OverviewResultScreen> {
  OverviewResultBloc get _bloc => BlocProvider.of<OverviewResultBloc>(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<OverviewResultBloc, OverviewResultState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    state.status.displayResult,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                SizedBox(
                  height: 450,
                  width: 450,
                  child: PieChart(
                    dataMap: {
                      'Правильні відповіді': state.correctAnswers!,
                      'Неправильні відповіді': (100 - state.correctAnswers!),
                    },
                    colorList: const [Colors.green, Colors.red],
                    chartRadius: MediaQuery.of(context).size.width / 2,
                    ringStrokeWidth: 24,
                    animationDuration: const Duration(seconds: 3),
                    chartValuesOptions: const ChartValuesOptions(
                      showChartValues: true,
                      showChartValuesOutside: false,
                      showChartValuesInPercentage: true,
                      showChartValueBackground: false,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 52,
                ),
                ElevatedButton(
                  onPressed: () => context.goNamed(AppRoutInfo.testScreen.name),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(62.0),
                  ),
                  child: const Text('Почати тест знову'),
                ),
              ],
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
