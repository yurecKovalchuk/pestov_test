import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_question_model.freezed.dart';

@freezed
class TestQuestionModel with _$TestQuestionModel {
  const factory TestQuestionModel({
    required String question,
    required int? answerPosition,
    required List<String> answers,
    required bool isAnswered,
  }) = _TestQuestionModel;
}
