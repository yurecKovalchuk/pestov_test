import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';

import 'package:pestov_test/app/app.dart';
import '../bloc/test_bloc.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  TestBloc get _bloc => BlocProvider.of<TestBloc>(context);

  @override
  void initState() {
    _bloc.loadQuestions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<TestBloc, TestState>(
        builder: (context, state) {
          return state.questions.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        state.questions[state.currentQuestionIndex].question,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.questions[state.currentQuestionIndex].answers.length,
                        itemBuilder: (context, index) {
                          // final answerIndex = index + 1;
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () => _bloc.selectAnswer(index),
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size.fromHeight(62.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      state.questions[state.currentQuestionIndex].answers[index],
                                      style: const TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                      softWrap: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Text('${(state.currentQuestionIndex + 1).toString()}/${state.questions.length}'),
                    ],
                  ),
                );
        },
        listener: _stateListener,
      ),
    );
  }

  void _stateListener(BuildContext context, TestState state) {
    if (state.isEndTest == true) {
      GoRouter.of(context).goNamed(
        AppRoutInfo.overviewResultScreen.name,
        queryParameters: {
          "correctAnswers": state.getCountCorrectAnswers.toString(),
          "numberOfQuestions": state.questions.length.toString(),
        },
      );
    }
  }
}
