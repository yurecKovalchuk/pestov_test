import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pestov_test/domain/domain.dart';

part 'test_state.dart';

part 'test_bloc.freezed.dart';

class TestBloc extends Cubit<TestState> {
  TestBloc(this._testRepository)
      : super(const TestState(
          currentQuestionIndex: 0,
          isEndTest: false,
          questions: [],
        ));

  final TestRepository _testRepository;

  void loadQuestions() async {
    final result = await _testRepository.loadQuestions();
    emit(state.copyWith(questions: result));
  }

  void saveAnswers(int questionIndex, int answerIndex) {}

  void selectAnswer(int answerIndex) {
    final currentQuestion = state.questions[state.currentQuestionIndex];
    final updatedQuestion = currentQuestion.copyWith(isAnswered: answerIndex == currentQuestion.answerPosition);

    final questions = [...state.questions]
      ..removeAt(state.currentQuestionIndex)
      ..insert(state.currentQuestionIndex, updatedQuestion);

    final updateQuestionIndex = state.currentQuestionIndex + 1;

    if (updateQuestionIndex >= state.questions.length) {
      emit(state.copyWith(isEndTest: true));
    } else {
      emit(state.copyWith(currentQuestionIndex: updateQuestionIndex, questions: questions));
    }
  }
}
