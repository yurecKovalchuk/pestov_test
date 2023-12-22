import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pestov_test/models/models.dart';

part 'test_state.dart';

part 'test_bloc.freezed.dart';

class TestBloc extends Cubit<TestState> {
  TestBloc() : super(const TestState());
}
