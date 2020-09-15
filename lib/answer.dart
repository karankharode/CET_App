import 'package:flutter/material.dart';

class Answers extends StatelessWidget {

  final Function selectHandler;
  final String answerText;

  Answers(this.selectHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(10))
        
      ),
      
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(25, 8, 25, 6),

      child:Container(
        height: 40,
        child: InkWell(            
              child: Center(child: Text(answerText,style: TextStyle(color: Colors.white),)),
              onTap: selectHandler,         
            ),
      ),
      
    );
  }
}