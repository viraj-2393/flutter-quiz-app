import 'dart:ffi';

import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int totalScore;
  final VoidCallback resetHandler;
  Result(this.totalScore,this.resetHandler);
  String get resultPhrase{
    String textPhrase;
    if(totalScore <= 8){
      textPhrase = "You're awesome brah!";
    }
    else if(totalScore <= 12){
      textPhrase = "Hmm... You're pretty likeable!";
    }
    else if(totalScore <= 16){
      textPhrase = "You're Strange my brah";
    }
    else{
      textPhrase = "You're are miserable!";
    }
    return textPhrase;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.green,

              )
              ,
            ),
            ElevatedButton(
                onPressed: resetHandler,
                child: Text('Reset quiz!')),
          ]
      ),
    );

  }
}