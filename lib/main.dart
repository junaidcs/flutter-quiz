import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var _totalScore = 0;

  static const _questions = const [
    {
      'question': 'What is your favourite book',
      'answers': [
        {'text': 'Book 1', 'score': 10},
        {'text': 'Book 2', 'score': 5},
        {'text': 'Book 3', 'score': 1},
      ]
    },
    {
      'question': 'What is your favourite moview',
      'answers': [
        {'text': 'Movie 1', 'score': 10},
        {'text': 'Movie 5', 'score': 5},
      ]
    },
    {
      'question': 'What is your favourite Country',
      'answers': [
        {'text': 'Pakistan', 'score': 10},
        {'text': 'Canada', 'score': 5},
        {'text': 'USA', 'score': 1},
      ]
    }
  ];

  void answerQuestion(score) {
    setState(() {
      _index += 1;
      _totalScore += score;
    });
  }

  void startAgain() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Cool App'),
        ),
        body: Container(
          child: (_index < _questions.length)
              ? Quiz(
                  questions: _questions,
                  index: _index,
                  handlerFn: answerQuestion,
                )
              : Result(_totalScore, startAgain),
        ),
      ),
    );
  }
}
