// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_question_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestQuestionDTOImpl _$$TestQuestionDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$TestQuestionDTOImpl(
      question: json['question'] as String,
      answerPosition: json['answer_position'] as int?,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$TestQuestionDTOImplToJson(
        _$TestQuestionDTOImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer_position': instance.answerPosition,
      'answers': instance.answers,
    };
