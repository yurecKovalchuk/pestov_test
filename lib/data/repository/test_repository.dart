import 'package:pestov_test/data/data.dart';

class TestRepository {
  TestRepository(this._assetsDataSource);

  final AssetsDataSource _assetsDataSource;

  Future<List<TestQuestionDTO>> loadQuestions() async {
    final result = _assetsDataSource.loadQuestions();
    return result;
  }
}
