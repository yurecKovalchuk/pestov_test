import 'package:flutter/cupertino.dart';
import 'package:pestov_test/localization/localization.dart';

import '../bloc/overview_result_bloc.dart';

extension ResultEvaluationStatusExtension on ResultEvaluationStatus {
  String displayResult(BuildContext context) {
    switch (this) {
      case ResultEvaluationStatus.unsatisfactory:
        return context.l10n.unsatisfactoryText;
      case ResultEvaluationStatus.bad:
        return context.l10n.badText;
      case ResultEvaluationStatus.average:
        return context.l10n.averageText;
      case ResultEvaluationStatus.good:
        return context.l10n.goodText;
      case ResultEvaluationStatus.excellent:
        return context.l10n.excellentText;
    }
  }
}
