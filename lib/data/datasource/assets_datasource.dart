import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:pestov_test/data/data.dart';

class AssetsDataSource {
  Future<List<TestQuestionDTO>> loadQuestions() async {
    String data = await rootBundle.loadString('lib/data/assets_data/test_questions.json');
    List<dynamic> jsonList = json.decode(data);

    return jsonList.map((json) => TestQuestionDTO.fromJson(json)).toList();
  }
}
