import 'package:flutter/material.dart';

class Questions extends StatelessWidget{
  final String questionText;
  Questions(this.questionText);
  @override
  Widget build(BuildContext context){
    return Container(
        margin: EdgeInsets.only(top:10.0),
        child:Text(
        questionText,
        style: TextStyle(
          fontSize: 20.0,
        ),
    )
    );
  }
}