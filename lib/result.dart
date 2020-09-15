import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore,this.resetHandler);

  String get resultPrase{
    var resultText = 'You did it';
    if(resultScore<=8){
      resultText= ' Tu banega Engineer';
    }
    else if(resultScore<= 18){
      resultText = 'Koshish Karenge to ban jaega Engineer';
    }
    else if(resultScore<=25){
      resultText = 'Kya karta hai bhai, Bhansali banna hai kya';

    }
    else{
      resultText = 'Tauba Tauba, bade manhus ho';
    }
    return resultText;

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultPrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold,color: Colors.white),
          textAlign: TextAlign.center,),
          FlatButton(child: Text('Restart Quiz'),
          onPressed: resetHandler,
          textColor: Colors.blue,)
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      )
    );
  }
}