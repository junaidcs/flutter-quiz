import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onPressedFn;
  final String question;

  Answer(this.question, this.onPressedFn);

  @override
  Widget build(BuildContext ctx) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(question),
        onPressed: onPressedFn,
        color: Colors.greenAccent,
      ),
    );
  }
}
