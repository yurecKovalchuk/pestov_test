import 'app_localizations.g.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get projectName => 'Pestov Test';

  @override
  String get startButtonText => 'Start';

  @override
  String get correctAnswersText => 'Correct Answers';

  @override
  String get incorrectAnswersText => 'Incorrect Answers';

  @override
  String get startTestAgainButtonText => 'Start Test Again';

  @override
  String get unsatisfactoryText => 'Unsatisfactory';

  @override
  String get badText => 'Bad';

  @override
  String get averageText => 'Average';

  @override
  String get goodText => 'Good';

  @override
  String get excellentText => 'Excellent';
}
