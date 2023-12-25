import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:injectable/injectable.dart';

import 'package:pestov_test/data/data.dart';
import '../../gen/assets.gen.dart';

@injectable
class AssetsDataSource {
  Future<List<TestQuestionDTO>> loadQuestions(String languageCode) async {
    String data =
        await rootBundle.loadString(languageCode == "en" ? Assets.data.testQuestionsEn : Assets.data.testQuestionsUk);
    List<dynamic> jsonList = json.decode(data);

    return jsonList.map((json) => TestQuestionDTO.fromJson(json)).toList();
  }
}
