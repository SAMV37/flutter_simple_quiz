import 'package:flutter/cupertino.dart';

import './question.dart';
import './answer.dart';

class QuizWidget extends StatelessWidget {

  var questions;
  int questionIndex;
  Function answerQuestion;

  QuizWidget({this.questionIndex, this.questions, this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          QuestionWidget(
            questionText: questions[questionIndex]["question"],
          ),
          ...(questions[questionIndex]["answers"] as List<Map>).map((answer) {
            return AnswerWidget(answerText: answer["text"], onPressed:() => answerQuestion(answer["score"]));
          }).toList()
        ],
      ),
    );
  }
}
