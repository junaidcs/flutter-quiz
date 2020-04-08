import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final score;
  final startAgain;

  Result(this.score, this.startAgain);

  String get resultText {
    return 'You made score.. $score';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultText,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Start Again'),
            onPressed: startAgain,
            textColor: Colors.blueAccent,
          )
        ],
      ),
    );
  }
}
