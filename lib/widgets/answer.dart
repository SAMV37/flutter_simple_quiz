import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {

  Function onPressed;
  String answerText;

  AnswerWidget({this.onPressed, this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.red[200],
        child: Text(answerText),
        textColor: Colors.white,
        onPressed: onPressed,
      ),
    );
  }
}
