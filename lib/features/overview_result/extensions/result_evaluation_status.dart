import '../bloc/overview_result_bloc.dart';

extension ResultEvaluationStatusExtension on ResultEvaluationStatus {
  String get displayResult {
    switch (this) {
      case ResultEvaluationStatus.bad:
        return "Незадовільно";
      case ResultEvaluationStatus.average:
        return "Середнє";
      case ResultEvaluationStatus.excellent:
        return "Відмінно";
      case ResultEvaluationStatus.good:
        return "Добре";
      case ResultEvaluationStatus.unsatisfactory:
        return "Незадовільно";
    }
  }
}
