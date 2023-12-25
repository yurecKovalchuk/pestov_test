part of 'overview_result_bloc.dart';

enum ResultEvaluationStatus {
  bad(50.0),
  average(70.0),
  excellent(80.0),
  good(90.0),
  unsatisfactory(100.0);

  final double countAnswers;

  const ResultEvaluationStatus(this.countAnswers);
}

@freezed
class OverviewResultState with _$OverviewResultState {
  const factory OverviewResultState({
    required ResultEvaluationStatus status,
    required double correctAnswers,
  }) = _OverviewResultState;

  factory OverviewResultState.fromPercentage({
    required int correctAnswers,
    required int numberOfQuestions,
  }) {
    final percentage = (correctAnswers / numberOfQuestions) * 100;
    final status = ResultEvaluationStatus.values.firstWhere((element) {
      return percentage <= element.countAnswers;
    });

    return OverviewResultState(
      status: status,
      correctAnswers: percentage,
    );
  }
}
