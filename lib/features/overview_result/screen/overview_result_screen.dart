import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:pestov_test/localization/localization.dart';
import 'package:pie_chart/pie_chart.dart';

import 'package:pestov_test/app/app.dart';
import '../bloc/overview_result_bloc.dart';
import '../extensions/extensions.dart';

class OverviewResultScreen extends StatelessWidget {
  const OverviewResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<OverviewResultBloc, OverviewResultState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    state.status.displayResult(context),
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                SizedBox(
                  height: 400,
                  width: 400,
                  child: PieChart(
                    dataMap: {
                      context.l10n.correctAnswersText: state.correctAnswers,
                      context.l10n.incorrectAnswersText: (100 - state.correctAnswers),
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
                  onPressed: () => context.goNamed(AppRoutInfo.testScreen.name, queryParameters: {
                    "locale": Localizations.localeOf(context).languageCode,
                  }),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(62.0),
                  ),
                  child: Text(context.l10n.startTestAgainButtonText),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
