import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {

  int finalScore;

  Function retry;

  ResultWidget({this.finalScore, this.retry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("Your score is $finalScore!!!"),
          SizedBox(height: 10.0),
          RaisedButton(
            child: Text("Retry"),
            onPressed: retry,
          )
        ],
      )
    );
  }
}
