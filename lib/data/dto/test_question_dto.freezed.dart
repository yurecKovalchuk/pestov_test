// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_question_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestQuestionDTO _$TestQuestionDTOFromJson(Map<String, dynamic> json) {
  return _TestQuestionDTO.fromJson(json);
}

/// @nodoc
mixin _$TestQuestionDTO {
  String get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'answer_position')
  int? get answerPosition => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestQuestionDTOCopyWith<TestQuestionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestQuestionDTOCopyWith<$Res> {
  factory $TestQuestionDTOCopyWith(
          TestQuestionDTO value, $Res Function(TestQuestionDTO) then) =
      _$TestQuestionDTOCopyWithImpl<$Res, TestQuestionDTO>;
  @useResult
  $Res call(
      {String question,
      @JsonKey(name: 'answer_position') int? answerPosition,
      List<Map<String, dynamic>> answers});
}

/// @nodoc
class _$TestQuestionDTOCopyWithImpl<$Res, $Val extends TestQuestionDTO>
    implements $TestQuestionDTOCopyWith<$Res> {
  _$TestQuestionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answerPosition = freezed,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answerPosition: freezed == answerPosition
          ? _value.answerPosition
          : answerPosition // ignore: cast_nullable_to_non_nullable
              as int?,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestQuestionDTOImplCopyWith<$Res>
    implements $TestQuestionDTOCopyWith<$Res> {
  factory _$$TestQuestionDTOImplCopyWith(_$TestQuestionDTOImpl value,
          $Res Function(_$TestQuestionDTOImpl) then) =
      __$$TestQuestionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String question,
      @JsonKey(name: 'answer_position') int? answerPosition,
      List<Map<String, dynamic>> answers});
}

/// @nodoc
class __$$TestQuestionDTOImplCopyWithImpl<$Res>
    extends _$TestQuestionDTOCopyWithImpl<$Res, _$TestQuestionDTOImpl>
    implements _$$TestQuestionDTOImplCopyWith<$Res> {
  __$$TestQuestionDTOImplCopyWithImpl(
      _$TestQuestionDTOImpl _value, $Res Function(_$TestQuestionDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answerPosition = freezed,
    Object? answers = null,
  }) {
    return _then(_$TestQuestionDTOImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answerPosition: freezed == answerPosition
          ? _value.answerPosition
          : answerPosition // ignore: cast_nullable_to_non_nullable
              as int?,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestQuestionDTOImpl implements _TestQuestionDTO {
  const _$TestQuestionDTOImpl(
      {required this.question,
      @JsonKey(name: 'answer_position') required this.answerPosition,
      required final List<Map<String, dynamic>> answers})
      : _answers = answers;

  factory _$TestQuestionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestQuestionDTOImplFromJson(json);

  @override
  final String question;
  @override
  @JsonKey(name: 'answer_position')
  final int? answerPosition;
  final List<Map<String, dynamic>> _answers;
  @override
  List<Map<String, dynamic>> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'TestQuestionDTO(question: $question, answerPosition: $answerPosition, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestQuestionDTOImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answerPosition, answerPosition) ||
                other.answerPosition == answerPosition) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, answerPosition,
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestQuestionDTOImplCopyWith<_$TestQuestionDTOImpl> get copyWith =>
      __$$TestQuestionDTOImplCopyWithImpl<_$TestQuestionDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestQuestionDTOImplToJson(
      this,
    );
  }
}

abstract class _TestQuestionDTO implements TestQuestionDTO {
  const factory _TestQuestionDTO(
          {required final String question,
          @JsonKey(name: 'answer_position') required final int? answerPosition,
          required final List<Map<String, dynamic>> answers}) =
      _$TestQuestionDTOImpl;

  factory _TestQuestionDTO.fromJson(Map<String, dynamic> json) =
      _$TestQuestionDTOImpl.fromJson;

  @override
  String get question;
  @override
  @JsonKey(name: 'answer_position')
  int? get answerPosition;
  @override
  List<Map<String, dynamic>> get answers;
  @override
  @JsonKey(ignore: true)
  _$$TestQuestionDTOImplCopyWith<_$TestQuestionDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
