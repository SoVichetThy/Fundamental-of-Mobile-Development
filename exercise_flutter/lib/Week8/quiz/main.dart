import 'package:exercise_flutter/Week8/quiz/view/quiz_page.dart';
import 'package:flutter/material.dart';

import 'package:uuid/uuid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const uuid = Uuid();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizPage(
      ),
    );
  }
}
