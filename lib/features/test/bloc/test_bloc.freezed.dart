// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TestState {
  List<TestQuestionDTO>? get questions => throw _privateConstructorUsedError;
  List<TestAnswerModel>? get answers => throw _privateConstructorUsedError;
  int get currentQuestionIndex => throw _privateConstructorUsedError;
  int? get correctAnswersCount => throw _privateConstructorUsedError;
  bool get isEndTest => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestStateCopyWith<TestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestStateCopyWith<$Res> {
  factory $TestStateCopyWith(TestState value, $Res Function(TestState) then) =
      _$TestStateCopyWithImpl<$Res, TestState>;
  @useResult
  $Res call(
      {List<TestQuestionDTO>? questions,
      List<TestAnswerModel>? answers,
      int currentQuestionIndex,
      int? correctAnswersCount,
      bool isEndTest});
}

/// @nodoc
class _$TestStateCopyWithImpl<$Res, $Val extends TestState>
    implements $TestStateCopyWith<$Res> {
  _$TestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = freezed,
    Object? answers = freezed,
    Object? currentQuestionIndex = null,
    Object? correctAnswersCount = freezed,
    Object? isEndTest = null,
  }) {
    return _then(_value.copyWith(
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<TestQuestionDTO>?,
      answers: freezed == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<TestAnswerModel>?,
      currentQuestionIndex: null == currentQuestionIndex
          ? _value.currentQuestionIndex
          : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswersCount: freezed == correctAnswersCount
          ? _value.correctAnswersCount
          : correctAnswersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isEndTest: null == isEndTest
          ? _value.isEndTest
          : isEndTest // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestStateImplCopyWith<$Res>
    implements $TestStateCopyWith<$Res> {
  factory _$$TestStateImplCopyWith(
          _$TestStateImpl value, $Res Function(_$TestStateImpl) then) =
      __$$TestStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TestQuestionDTO>? questions,
      List<TestAnswerModel>? answers,
      int currentQuestionIndex,
      int? correctAnswersCount,
      bool isEndTest});
}

/// @nodoc
class __$$TestStateImplCopyWithImpl<$Res>
    extends _$TestStateCopyWithImpl<$Res, _$TestStateImpl>
    implements _$$TestStateImplCopyWith<$Res> {
  __$$TestStateImplCopyWithImpl(
      _$TestStateImpl _value, $Res Function(_$TestStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = freezed,
    Object? answers = freezed,
    Object? currentQuestionIndex = null,
    Object? correctAnswersCount = freezed,
    Object? isEndTest = null,
  }) {
    return _then(_$TestStateImpl(
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<TestQuestionDTO>?,
      answers: freezed == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<TestAnswerModel>?,
      currentQuestionIndex: null == currentQuestionIndex
          ? _value.currentQuestionIndex
          : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswersCount: freezed == correctAnswersCount
          ? _value.correctAnswersCount
          : correctAnswersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isEndTest: null == isEndTest
          ? _value.isEndTest
          : isEndTest // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TestStateImpl implements _TestState {
  const _$TestStateImpl(
      {final List<TestQuestionDTO>? questions,
      final List<TestAnswerModel>? answers,
      required this.currentQuestionIndex,
      this.correctAnswersCount,
      required this.isEndTest})
      : _questions = questions,
        _answers = answers;

  final List<TestQuestionDTO>? _questions;
  @override
  List<TestQuestionDTO>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TestAnswerModel>? _answers;
  @override
  List<TestAnswerModel>? get answers {
    final value = _answers;
    if (value == null) return null;
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int currentQuestionIndex;
  @override
  final int? correctAnswersCount;
  @override
  final bool isEndTest;

  @override
  String toString() {
    return 'TestState(questions: $questions, answers: $answers, currentQuestionIndex: $currentQuestionIndex, correctAnswersCount: $correctAnswersCount, isEndTest: $isEndTest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestStateImpl &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.currentQuestionIndex, currentQuestionIndex) ||
                other.currentQuestionIndex == currentQuestionIndex) &&
            (identical(other.correctAnswersCount, correctAnswersCount) ||
                other.correctAnswersCount == correctAnswersCount) &&
            (identical(other.isEndTest, isEndTest) ||
                other.isEndTest == isEndTest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(_answers),
      currentQuestionIndex,
      correctAnswersCount,
      isEndTest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestStateImplCopyWith<_$TestStateImpl> get copyWith =>
      __$$TestStateImplCopyWithImpl<_$TestStateImpl>(this, _$identity);
}

abstract class _TestState implements TestState {
  const factory _TestState(
      {final List<TestQuestionDTO>? questions,
      final List<TestAnswerModel>? answers,
      required final int currentQuestionIndex,
      final int? correctAnswersCount,
      required final bool isEndTest}) = _$TestStateImpl;

  @override
  List<TestQuestionDTO>? get questions;
  @override
  List<TestAnswerModel>? get answers;
  @override
  int get currentQuestionIndex;
  @override
  int? get correctAnswersCount;
  @override
  bool get isEndTest;
  @override
  @JsonKey(ignore: true)
  _$$TestStateImplCopyWith<_$TestStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
