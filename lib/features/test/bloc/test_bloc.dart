import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pestov_test/data/data.dart';

import 'package:pestov_test/models/models.dart';

part 'test_state.dart';

part 'test_bloc.freezed.dart';

class TestBloc extends Cubit<TestState> {
  TestBloc(this._testRepository)
      : super(const TestState(
          currentQuestionIndex: 0,
        ));

  final TestRepository _testRepository;

  void loadQuestions() async {
    final result = await _testRepository.loadQuestions();
    emit(state.copyWith(questions: result));
  }

  void selectAnswer(int answerIndex) {
    moveToNextQuestion();
  }

  void moveToNextQuestion() {
    updateCurrentQuestionIndex();
  }

  void updateCurrentQuestionIndex() {
    final updateQuestionIndex = state.currentQuestionIndex + 1;
    emit(state.copyWith(currentQuestionIndex: updateQuestionIndex));
  }
}
