import 'package:exercise_flutter/Week8/quiz/data/quiz_data.dart';
import 'package:exercise_flutter/Week8/quiz/model/quiz_model.dart';
import 'package:exercise_flutter/Week8/quiz/model/submittion_model.dart';
import 'package:exercise_flutter/Week8/quiz/quiz.dart';
import 'package:exercise_flutter/Week8/quiz/view/answer_page.dart';
import 'package:exercise_flutter/Week8/quiz/view/question_page.dart';
import 'package:exercise_flutter/Week8/quiz/view/welcome_page.dart';
import 'package:flutter/material.dart';

import 'package:uuid/uuid.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});
  @override
  State<QuizPage> createState() => _QuizPageState();
}

enum QuizState {
  notStart('not start'),
  started('started'),
  finish('finished');

  final String label;
  const QuizState(this.label);

  @override
  String toString() {
    return label;
  }
}

class _QuizPageState extends State<QuizPage> {
  QuizState currentState = QuizState.notStart;
  static const uuid = Uuid();

  Quiz quizApp = Quiz(
    quiz: [],
    submission: [],
  );
  int currentIndex = 0;

  late SubmittionModel submission;
  late QuizModel quiz;

  void nextQuestion() {
    (currentIndex < quiz.questions.length - 1 && currentIndex >= 0)
        ? setState(() {
            currentIndex++;
          })
        : setState(() {
            currentState = QuizState.finish;
          });
  }

  void triggerQuestionPage() {
    setState(() {
      currentState = QuizState.started;
    });
  }

  void triggerWelcomePage() {
    setState(() {
      currentIndex = 0;
      currentState = QuizState.notStart;
      quizApp.addQuiz(quiz);
      quizApp.addSubmittion(submission);
    });
  }

  Widget stateProvider() {
    switch (currentState) {
      case QuizState.notStart:
        quiz = quizData;
        submission = SubmittionModel(submissionId: uuid.v4(), answers: []);
        return WelcomePage(
          triggerWelcome: triggerQuestionPage,
          quizTitle: quiz.title,
        );
      case QuizState.started:
        return QuestionPage(
          answers: submission.answers,
          nextQuestion: nextQuestion,
          question: quiz.questions[currentIndex],
        );
      case QuizState.finish:
        return AnswerPage(
          submittionModel: submission,
          restartQuiz: triggerWelcomePage,
        );
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return stateProvider();
  }
}
