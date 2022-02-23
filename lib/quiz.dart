import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';
class Quiz extends StatelessWidget{
  //final List<Map<String,List<Map<String,Object>>>> questions;
  final List<Map<String,Object>> questions;
  final Function onClick;
  final int questionIndex;

  Quiz({
    required this.onClick,
    required this.questions,
    required this.questionIndex
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[questionIndex]['questionsText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer){
          return Answer(() => onClick(answer['score']),answer['text'] as String);
        }).toList()
      ],
    );
  }
}