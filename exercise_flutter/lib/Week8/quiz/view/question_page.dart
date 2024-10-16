import 'package:exercise_flutter/Week8/quiz/model/answer_model.dart';
import 'package:exercise_flutter/Week8/quiz/model/question_model.dart';
import 'package:exercise_flutter/Week8/quiz/view/quiz_item.dart';
import 'package:flutter/material.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage(
      {super.key,
      required this.question,
      required this.nextQuestion,
      required this.answers});
  final QuestionModel question;
  final List<AnswerModel> answers;
  final void Function() nextQuestion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffB32113),
              Color(0xff6B140B),
            ],
          ),
        ),
        child: QuizItem(
          nextQuestion: nextQuestion,
          question: question,
          answers: answers,
        ),
      ),
    );
  }
}
