import 'package:flutter/material.dart';

import 'package:flutter_simple_quiz/widgets/quiz.dart';
import 'package:flutter_simple_quiz/widgets/result.dart';

void main() => runApp(HomeWidget());

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  var questions = [
    {
      "question": "What is your favourite animal",
      "answers": [{"text": "elephant", "score": 4}, {"text": "lion", "score": 3}, {"text": "wolf", "score": 2}, {"text": "dolphin", "score": 1}]
    },
    {
      "question": "What is your favourite color",
      "answers": [{"text": "red", "score": 4}, {"text": "black", "score": 3}, {"text": "white", "score": 2}, {"text": "blue", "score": 1}]
    },
    {
      "question": "What is your favourite instructor",
      "answers": [{"text": "Max", "score": 4}, {"text": "Max", "score": 3}, {"text": "Max", "score": 2}, {"text": "Max", "score": 1}]
    },
  ];
  int questionIndex = 0;
  int finalScore = 0;

  void answerQuestion(int score) {
    setState(() {
      finalScore+=score;
      if (questionIndex < questions.length) {
        questionIndex++;
      }
    });
  }

  void retryQuiz(){
    setState(() {
      questionIndex = 0;
      finalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Simple quiz app",
            style: TextStyle(color: Colors.white70, fontSize: 20.0),
          ),
          centerTitle: true,
          backgroundColor: Colors.red[900],
        ),
        body: questionIndex < questions.length
            ? QuizWidget(
                questionIndex: questionIndex,
                questions: questions,
                answerQuestion: answerQuestion,
              )
            : ResultWidget(finalScore: finalScore, retry: retryQuiz),
      ),
    );
  }
}
