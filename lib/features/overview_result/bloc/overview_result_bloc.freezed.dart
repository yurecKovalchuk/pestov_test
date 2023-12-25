// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_result_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OverviewResultState {
  ResultEvaluationStatus get status => throw _privateConstructorUsedError;
  double get correctAnswers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OverviewResultStateCopyWith<OverviewResultState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewResultStateCopyWith<$Res> {
  factory $OverviewResultStateCopyWith(
          OverviewResultState value, $Res Function(OverviewResultState) then) =
      _$OverviewResultStateCopyWithImpl<$Res, OverviewResultState>;
  @useResult
  $Res call({ResultEvaluationStatus status, double correctAnswers});
}

/// @nodoc
class _$OverviewResultStateCopyWithImpl<$Res, $Val extends OverviewResultState>
    implements $OverviewResultStateCopyWith<$Res> {
  _$OverviewResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? correctAnswers = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResultEvaluationStatus,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OverviewResultStateImplCopyWith<$Res>
    implements $OverviewResultStateCopyWith<$Res> {
  factory _$$OverviewResultStateImplCopyWith(_$OverviewResultStateImpl value,
          $Res Function(_$OverviewResultStateImpl) then) =
      __$$OverviewResultStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResultEvaluationStatus status, double correctAnswers});
}

/// @nodoc
class __$$OverviewResultStateImplCopyWithImpl<$Res>
    extends _$OverviewResultStateCopyWithImpl<$Res, _$OverviewResultStateImpl>
    implements _$$OverviewResultStateImplCopyWith<$Res> {
  __$$OverviewResultStateImplCopyWithImpl(_$OverviewResultStateImpl _value,
      $Res Function(_$OverviewResultStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? correctAnswers = null,
  }) {
    return _then(_$OverviewResultStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResultEvaluationStatus,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$OverviewResultStateImpl implements _OverviewResultState {
  const _$OverviewResultStateImpl(
      {required this.status, required this.correctAnswers});

  @override
  final ResultEvaluationStatus status;
  @override
  final double correctAnswers;

  @override
  String toString() {
    return 'OverviewResultState(status: $status, correctAnswers: $correctAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverviewResultStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, correctAnswers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OverviewResultStateImplCopyWith<_$OverviewResultStateImpl> get copyWith =>
      __$$OverviewResultStateImplCopyWithImpl<_$OverviewResultStateImpl>(
          this, _$identity);
}

abstract class _OverviewResultState implements OverviewResultState {
  const factory _OverviewResultState(
      {required final ResultEvaluationStatus status,
      required final double correctAnswers}) = _$OverviewResultStateImpl;

  @override
  ResultEvaluationStatus get status;
  @override
  double get correctAnswers;
  @override
  @JsonKey(ignore: true)
  _$$OverviewResultStateImplCopyWith<_$OverviewResultStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
