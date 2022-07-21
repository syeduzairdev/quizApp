import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
 
// Flutter Hope
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  const Quiz(this.answerQuestion, this.questions,
      this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers']
                as List<Map<String, Object>>)
            .map((ans) {
          return Answer(() => answerQuestion(ans['score']), ans['text'] as String);
        }).toList(),
      ],
    );
  }
}
