import 'package:pestov_test/data/data.dart';

abstract class TestRepository {
  Future<List<TestQuestionDTO>> loadQuestions();
}
