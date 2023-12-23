import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          return state.questions == null
              ? const Center(child: CircularProgressIndicator())
              : Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        state.questions![state.currentQuestionIndex].question,
                        style: const TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.questions![state.currentQuestionIndex].answers.length,
                        itemBuilder: (context, index) {
                          final answerIndex = index + 1;
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                _bloc.selectAnswer(answerIndex);
                              },
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      state.questions![state.currentQuestionIndex].answers[answerIndex - 1]['text'],
                                      style: const TextStyle(fontSize: 18.0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
        },
        listener: (context, state) {},
      ),
    );
  }
}
