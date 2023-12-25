import 'package:injectable/injectable.dart';

import 'package:pestov_test/data/data.dart';
import 'package:pestov_test/domain/domain.dart';

@Injectable(as: TestRepository)
class TestRepositoryImpl implements TestRepository{
  TestRepositoryImpl(
    this._assetsDataSource,
  );

  final AssetsDataSource _assetsDataSource;

  @override
  Future<List<TestQuestionDTO>> loadQuestions() async {
    final result = _assetsDataSource.loadQuestions();
    return result;
  }
}
