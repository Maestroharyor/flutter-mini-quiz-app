import 'package:flutter/material.dart';
import "./question.dart";
import "./answer.dart";

class Quiz extends StatelessWidget {
  // const Quiz({Key? key}) : super(key: key);

  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;

  Quiz(@required this.questions, @required this.questionIndex,
      @required this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // Text(_questions[questionIndex]),
      Question(questions[questionIndex]['questionText'] as String),
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            answer['text'] as String, () => answerQuestion(answer['score']));
      }).toList()
    ]);
  }
}
