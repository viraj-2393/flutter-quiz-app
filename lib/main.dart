import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}
class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomeState();

  }
}
class _HomeState extends State{
  int _questionIndex = 0;
  int _totalScore = 0;
  final _questions = const [
    {
      'questionsText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionsText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionsText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },


  ];
  void onClick(int score){
    setState((){
      //if(_questionIndex < 2){
        _questionIndex++;
        _totalScore += score;
      //}
    });
  }
  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Personality Tester'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: _questions.length > _questionIndex ?
              Quiz(
                onClick: onClick,
                questions: _questions,
                questionIndex: _questionIndex,
              ):
              Result(_totalScore,_resetQuiz),
      )
    );
  }
}
