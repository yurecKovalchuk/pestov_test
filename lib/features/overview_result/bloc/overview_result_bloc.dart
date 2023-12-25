import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'overview_result_state.dart';

part 'overview_result_bloc.freezed.dart';

class OverviewResultBloc extends Cubit<OverviewResultState> {
  OverviewResultBloc(
    this.correctAnswers,
    this.numberOfQuestions,
  ) : super(OverviewResultState.fromPercentage(
          correctAnswers: correctAnswers,
          numberOfQuestions: numberOfQuestions,
        ));

  final int correctAnswers;
  final int numberOfQuestions;
}
