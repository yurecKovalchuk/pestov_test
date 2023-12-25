import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:pestov_test/app/app.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pestov test',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(
              height: 36,
            ),
            ElevatedButton(
              onPressed: () => context.go(AppRoutInfo.testScreen.path),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(62.0),
              ),
              child: const Text('Start'),
            ),
          ],
        ),
      ),
    );
  }
}
