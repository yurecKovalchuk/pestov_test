// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TestAnswerModel {
  int? get question => throw _privateConstructorUsedError;
  int? get answer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestAnswerModelCopyWith<TestAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestAnswerModelCopyWith<$Res> {
  factory $TestAnswerModelCopyWith(
          TestAnswerModel value, $Res Function(TestAnswerModel) then) =
      _$TestAnswerModelCopyWithImpl<$Res, TestAnswerModel>;
  @useResult
  $Res call({int? question, int? answer});
}

/// @nodoc
class _$TestAnswerModelCopyWithImpl<$Res, $Val extends TestAnswerModel>
    implements $TestAnswerModelCopyWith<$Res> {
  _$TestAnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as int?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestAnswerModelImplCopyWith<$Res>
    implements $TestAnswerModelCopyWith<$Res> {
  factory _$$TestAnswerModelImplCopyWith(_$TestAnswerModelImpl value,
          $Res Function(_$TestAnswerModelImpl) then) =
      __$$TestAnswerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? question, int? answer});
}

/// @nodoc
class __$$TestAnswerModelImplCopyWithImpl<$Res>
    extends _$TestAnswerModelCopyWithImpl<$Res, _$TestAnswerModelImpl>
    implements _$$TestAnswerModelImplCopyWith<$Res> {
  __$$TestAnswerModelImplCopyWithImpl(
      _$TestAnswerModelImpl _value, $Res Function(_$TestAnswerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$TestAnswerModelImpl(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as int?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TestAnswerModelImpl implements _TestAnswerModel {
  const _$TestAnswerModelImpl({this.question, this.answer});

  @override
  final int? question;
  @override
  final int? answer;

  @override
  String toString() {
    return 'TestAnswerModel(question: $question, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestAnswerModelImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestAnswerModelImplCopyWith<_$TestAnswerModelImpl> get copyWith =>
      __$$TestAnswerModelImplCopyWithImpl<_$TestAnswerModelImpl>(
          this, _$identity);
}

abstract class _TestAnswerModel implements TestAnswerModel {
  const factory _TestAnswerModel({final int? question, final int? answer}) =
      _$TestAnswerModelImpl;

  @override
  int? get question;
  @override
  int? get answer;
  @override
  @JsonKey(ignore: true)
  _$$TestAnswerModelImplCopyWith<_$TestAnswerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
