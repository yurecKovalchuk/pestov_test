// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_answer_model.freezed.dart';

@freezed
class TestAnswerModel with _$TestAnswerModel {
  const factory TestAnswerModel({
    int? question,
    int? answer,
    bool? isCorrect,
  }) = _TestAnswerModel;
}
