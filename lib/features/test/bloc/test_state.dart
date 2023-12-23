part of 'test_bloc.dart';

@freezed
class TestState with _$TestState {
  const factory TestState({
    List<TestQuestionDTO>? questions,
    List<TestAnswerModel>? answers,
    required int currentQuestionIndex,
  }) = _TestState;
}
