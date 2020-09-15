import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerChoosen;
  final int questionIndex;

  Quiz({@required this.questions,
  @required this.answerChoosen,
  @required this.questionIndex,});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
        
          Text("Answer Honestly !!", style: TextStyle(color: Colors.white),),
          SizedBox(height: 20,),
          Container(
            
          child: Question(questions[questionIndex]['questionText'])
          ),
          SizedBox(height: 70,),
          ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
            return Answers(()=>answerChoosen(answer['score']),answer['text']);
          }).toList()

        ],
      )
    ; 
  }
}