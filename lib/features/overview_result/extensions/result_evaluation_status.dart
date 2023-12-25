import '../bloc/overview_result_bloc.dart';

extension ResultEvaluationStatusExtension on ResultEvaluationStatus {
  String get displayResult {
    switch (this) {
      case ResultEvaluationStatus.unsatisfactory:
        return "Незадовільно";
      case ResultEvaluationStatus.bad:
        return "Погано";
      case ResultEvaluationStatus.average:
        return "Середнє";
      case ResultEvaluationStatus.good:
        return "Добре";
      case ResultEvaluationStatus.excellent:
        return "Відмінно";
    }
  }
}
