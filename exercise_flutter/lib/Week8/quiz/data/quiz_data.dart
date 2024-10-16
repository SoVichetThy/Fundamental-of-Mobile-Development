import 'package:exercise_flutter/Week8/quiz/model/question_model.dart';
import 'package:exercise_flutter/Week8/quiz/model/quiz_model.dart';
import 'package:uuid/uuid.dart';

const Uuid uuid = Uuid();

QuizModel quizData = QuizModel(
  quizId: uuid.v4(),
  title: 'Quiz App',
  questions: [
    QuestionModel(
        questionId: uuid.v4(),
        title: 'What is 1+1 =??',
        possibleAnswer: ['2', '20', '10'],
        correctAnswer: "2"),
    QuestionModel(
        questionId: uuid.v4(),
        title: 'Why do you choose that answer?',
        possibleAnswer: ['Because i want to choose', 'IDK', 'It is math'],
        correctAnswer: "It is math"),
    QuestionModel(
        questionId: uuid.v4(),
        title: 'Do u love code?',
        possibleAnswer: ['No', 'Yes, I HATE IT', 'Love'],
        correctAnswer: "Love"),
  ],
);
