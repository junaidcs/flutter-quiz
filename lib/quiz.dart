import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final questions;
  final index;
  final Function handlerFn;

  Quiz({@required this.questions, @required this.index, @required this.handlerFn});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[index]['question']),
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map((anwer) {
          return Answer(anwer['text'], () => handlerFn(anwer['score']));
        }).toList(),
      ],
    );
  }
}
