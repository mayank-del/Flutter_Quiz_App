// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //const MyApp({Key? key}) : super(key: key);

  final _question = const [
    {
      'questionText': 'What\'s your Favourite Color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Fox', 'score': 4},
        {'text': 'Dog', 'score': 7},
        {'text': 'Cat', 'score': 8},
        {'text': 'Kangaroo', 'score': 9},
      ],
    },
    {
      'questionText': 'What\'s your favourite chocolate?',
      'answers': [
        {'text': 'Diary Milk', 'score': 8},
        {'text': 'KitKat', 'score': 8},
        {'text': 'Milkbar', 'score': 6},
        {'text': 'Munch', 'score': 6},
      ],
    },
  ];

  var _quesIndex = 0;
  var _totalScore = 0;

  void _answerQues(int score) {
    _totalScore += score;

    setState(() {
      _quesIndex = _quesIndex + 1;
    });
    print(_quesIndex);
    if (_quesIndex < _question.length) {
      print('We have more question');
    } else {}
  }

  void _resestQuiz() {
    setState(() {
      _quesIndex = 0;
      _totalScore = 0;
    });
  }
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Mayank's 1st Flutter App"),
            ),
            body: _quesIndex < _question.length
                ? Quiz(
                    answerQues: _answerQues,
                    question: _question,
                    quesIndex: _quesIndex,
                  )
                : Result(_totalScore,_resestQuiz)));
  }
}
