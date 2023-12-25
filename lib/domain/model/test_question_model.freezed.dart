// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TestQuestionModel {
  String get question => throw _privateConstructorUsedError;
  int? get answerPosition => throw _privateConstructorUsedError;
  List<String> get answers => throw _privateConstructorUsedError;
  bool get isAnswered => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestQuestionModelCopyWith<TestQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestQuestionModelCopyWith<$Res> {
  factory $TestQuestionModelCopyWith(
          TestQuestionModel value, $Res Function(TestQuestionModel) then) =
      _$TestQuestionModelCopyWithImpl<$Res, TestQuestionModel>;
  @useResult
  $Res call(
      {String question,
      int? answerPosition,
      List<String> answers,
      bool isAnswered});
}

/// @nodoc
class _$TestQuestionModelCopyWithImpl<$Res, $Val extends TestQuestionModel>
    implements $TestQuestionModelCopyWith<$Res> {
  _$TestQuestionModelCopyWithImpl(this._value, this._then);

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
    Object? isAnswered = null,
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
              as List<String>,
      isAnswered: null == isAnswered
          ? _value.isAnswered
          : isAnswered // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestQuestionModelImplCopyWith<$Res>
    implements $TestQuestionModelCopyWith<$Res> {
  factory _$$TestQuestionModelImplCopyWith(_$TestQuestionModelImpl value,
          $Res Function(_$TestQuestionModelImpl) then) =
      __$$TestQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String question,
      int? answerPosition,
      List<String> answers,
      bool isAnswered});
}

/// @nodoc
class __$$TestQuestionModelImplCopyWithImpl<$Res>
    extends _$TestQuestionModelCopyWithImpl<$Res, _$TestQuestionModelImpl>
    implements _$$TestQuestionModelImplCopyWith<$Res> {
  __$$TestQuestionModelImplCopyWithImpl(_$TestQuestionModelImpl _value,
      $Res Function(_$TestQuestionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answerPosition = freezed,
    Object? answers = null,
    Object? isAnswered = null,
  }) {
    return _then(_$TestQuestionModelImpl(
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
              as List<String>,
      isAnswered: null == isAnswered
          ? _value.isAnswered
          : isAnswered // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TestQuestionModelImpl implements _TestQuestionModel {
  const _$TestQuestionModelImpl(
      {required this.question,
      required this.answerPosition,
      required final List<String> answers,
      required this.isAnswered})
      : _answers = answers;

  @override
  final String question;
  @override
  final int? answerPosition;
  final List<String> _answers;
  @override
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  final bool isAnswered;

  @override
  String toString() {
    return 'TestQuestionModel(question: $question, answerPosition: $answerPosition, answers: $answers, isAnswered: $isAnswered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestQuestionModelImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answerPosition, answerPosition) ||
                other.answerPosition == answerPosition) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.isAnswered, isAnswered) ||
                other.isAnswered == isAnswered));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question, answerPosition,
      const DeepCollectionEquality().hash(_answers), isAnswered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestQuestionModelImplCopyWith<_$TestQuestionModelImpl> get copyWith =>
      __$$TestQuestionModelImplCopyWithImpl<_$TestQuestionModelImpl>(
          this, _$identity);
}

abstract class _TestQuestionModel implements TestQuestionModel {
  const factory _TestQuestionModel(
      {required final String question,
      required final int? answerPosition,
      required final List<String> answers,
      required final bool isAnswered}) = _$TestQuestionModelImpl;

  @override
  String get question;
  @override
  int? get answerPosition;
  @override
  List<String> get answers;
  @override
  bool get isAnswered;
  @override
  @JsonKey(ignore: true)
  _$$TestQuestionModelImplCopyWith<_$TestQuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
