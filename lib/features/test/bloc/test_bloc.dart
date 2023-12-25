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
          answers: [],
          correctAnswersCount: 0,
          isEndTest: false,
        ));

  final TestRepository _testRepository;

  void loadQuestions() async {
    final result = await _testRepository.loadQuestions();
    emit(state.copyWith(questions: result));
  }

  void saveAnswers(int questionIndex, int answerIndex) {
    final updatedAnswers = List<TestAnswerModel>.from(state.answers as Iterable);
    updatedAnswers.add(TestAnswerModel(
      question: questionIndex + 1,
      answer: answerIndex,
    ));

    final currentQuestion = state.questions![questionIndex];
    final isCorrect = answerIndex == currentQuestion.correctAnswerPosition;

    emit(state.copyWith(
      answers: updatedAnswers,
      correctAnswersCount: state.correctAnswersCount! + (isCorrect ? 1 : 0),
    ));
  }

  void selectAnswer(int answerIndex) {
    saveAnswers(state.currentQuestionIndex, answerIndex);
    moveToNextQuestion();
  }

  void moveToNextQuestion() {
    updateCurrentQuestionIndex();
  }

  void updateCurrentQuestionIndex() {
    final updateQuestionIndex = state.currentQuestionIndex + 1;

    if (updateQuestionIndex >= state.questions!.length) {
      emit(state.copyWith(isEndTest: true));
    } else {
      emit(state.copyWith(currentQuestionIndex: updateQuestionIndex));
    }
  }
}
