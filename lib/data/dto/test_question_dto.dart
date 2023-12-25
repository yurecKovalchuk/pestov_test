// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_question_dto.freezed.dart';

part 'test_question_dto.g.dart';

@freezed
class TestQuestionDTO with _$TestQuestionDTO {
  const factory TestQuestionDTO({
    required String question,
    @JsonKey(name: 'answer_position') required int? answerPosition,
    required List<Map<String, dynamic>> answers,
  }) = _TestQuestionDTO;

  factory TestQuestionDTO.fromJson(Map<String, dynamic> json) => _$TestQuestionDTOFromJson(json);
}
