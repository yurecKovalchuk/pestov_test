part of 'test_bloc.dart';

@freezed
class TestState with _$TestState {
  const TestState._();

  const factory TestState({
    required List<TestQuestionModel> questions,
    required int currentQuestionIndex,
    required bool isEndTest,
  }) = _TestState;

  int get getCountCorrectAnswers => questions.where((element) => element.isAnswered == true).length;
}
