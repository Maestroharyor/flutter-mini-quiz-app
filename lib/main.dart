import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = [
    {
      'questionText': 'Who is the first Avenger?',
      'answers': [
        {'text': 'Captain America', 'score': 10},
        {'text': 'Ironman', 'score': 0},
        {'text': 'Doctor Strange', 'score': 0},
        {'text': 'Scarlet Witch', 'score': 0}
      ],
      'correctAnswer': 'Captain America'
    },
    {
      'questionText': 'Who is the Seventh Hokage?',
      'answers': [
        {'text': 'Naruto', 'score': 10},
        {'text': 'Kakashi', 'score': 0},
        {'text': 'Hashirama', 'score': 0},
        {'text': 'Madara', 'score': 0}
      ],
      'correctAnswer': 'Naruto'
    },
    {
      'questionText': 'Who is Luffy\'s father?',
      'answers': [
        {'text': 'Garp', 'score': 0},
        {'text': 'Dragon', 'score': 10},
        {'text': 'Shanks', 'score': 0},
        {'text': 'Whitebeard', 'score': 0}
      ],
      'correctAnswer': 'Dragon'
    },
    {
      'questionText': 'Who is the first Hokage?',
      'answers': [
        {'text': 'Madara', 'score': 0},
        {'text': 'Hashirama', 'score': 10},
        {'text': 'Naruto', 'score': 0},
        {'text': 'Sarutobi', 'score': 0}
      ],
      'correctAnswer': 'Sarutobi'
    },
  ];
  var _questionIndex = 0;
  var _score = 0;

  void _answerQuestion(int score) {
    // if (_questionIndex < questions.length) {

    // }
    _score += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('My Quiz App')),
            body: _questionIndex < questions.length
                ? Quiz(questions, _questionIndex, _answerQuestion)
                : Result(_score, _resetQuiz)));
  }
}
