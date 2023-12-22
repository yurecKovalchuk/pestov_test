// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_model.freezed.dart';


@freezed
class TestModel with _$TestModel {
  const factory TestModel({
    int? question,
    int? answer,
  }) = _TestModel;
}
