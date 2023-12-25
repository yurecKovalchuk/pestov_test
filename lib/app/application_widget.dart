import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get_it/get_it.dart';

import 'package:go_router/go_router.dart';

import 'package:pestov_test/domain/domain.dart';
import 'package:pestov_test/features/features.dart';
import 'app.dart';

class ApplicationWidget extends StatelessWidget {
  ApplicationWidget({
    super.key,
    required this.serviceLocator,
  });

  final GetIt serviceLocator;

  late final GoRouter _router = _buildRouting();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData.dark(),
    );
  }

  GoRouter _buildRouting() {
    return GoRouter(
      initialLocation: AppRoutInfo.startScreen.path,
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: AppRoutInfo.startScreen.path,
          name: AppRoutInfo.startScreen.name,
          builder: (context, state) {
            return const StartScreen();
          },
        ),
        GoRoute(
          path: AppRoutInfo.testScreen.path,
          name: AppRoutInfo.testScreen.name,
          builder: (context, state) {
            return BlocProvider<TestBloc>(
              create: (BuildContext context) => TestBloc(
                  serviceLocator<TestRepository>(),
              ),
              child: const TestScreen(),
            );
          },
        ),
        GoRoute(
          path: AppRoutInfo.overviewResultScreen.path,
          name: AppRoutInfo.overviewResultScreen.name,
          builder: (context, state) {
            final queryCorrectAnswers = state.uri.queryParameters['correctAnswers'].toString();
            final queryNumberOfQuestions = state.uri.queryParameters['numberOfQuestions'].toString();

            return BlocProvider<OverviewResultBloc>(
              create: (BuildContext context) => OverviewResultBloc(
                int.parse(queryCorrectAnswers),
                int.parse(queryNumberOfQuestions),
              ),
              child: const OverviewResultScreen(),
            );
          },
        ),
      ],
    );
  }
}
