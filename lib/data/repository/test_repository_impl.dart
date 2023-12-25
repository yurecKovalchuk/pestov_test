import 'package:injectable/injectable.dart';

import 'package:pestov_test/data/data.dart';
import 'package:pestov_test/domain/domain.dart';

@Injectable(as: TestRepository)
class TestRepositoryImpl implements TestRepository {
  TestRepositoryImpl(
    this._assetsDataSource,
  );

  final AssetsDataSource _assetsDataSource;

  @override
  Future<List<TestQuestionModel>> loadQuestions() async {
    final result = await _assetsDataSource.loadQuestions();
    return result
        .map((e) => TestQuestionModel(
              question: e.question,
              answerPosition: e.answerPosition,
              answers: e.answers.map<String>((e) => e["text"]).toList(),
              isAnswered: false,
            ))
        .toList();
  }
}
