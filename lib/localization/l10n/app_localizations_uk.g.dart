import 'app_localizations.g.dart';

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get projectName => 'Тест Пестова';

  @override
  String get startButtonText => 'Старт';

  @override
  String get correctAnswersText => 'Правильні відповіді';

  @override
  String get incorrectAnswersText => 'Неправильні відповіді';

  @override
  String get startTestAgainButtonText => 'Почати тест знову';

  @override
  String get unsatisfactoryText => 'Незадовільно';

  @override
  String get badText => 'Погано';

  @override
  String get averageText => 'Середнє';

  @override
  String get goodText => 'Добре';

  @override
  String get excellentText => 'Відмінно';
}
