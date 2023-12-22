part of 'test_bloc.dart';

@freezed
class TestState with _$TestState {
  const factory TestState({
    List<TestModel>? answers,
  }) = _TestState;
}
