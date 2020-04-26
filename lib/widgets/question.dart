import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  String questionText;

  QuestionWidget({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15.0),
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.blue[900], fontSize: 26.0),
      ),
    );
  }
}
