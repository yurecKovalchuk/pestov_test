import '../model/test_question_model.dart';

abstract class TestRepository {
  Future<List<TestQuestionModel>> loadQuestions();
}
