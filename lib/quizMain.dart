import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import './theme.dart';


class QuizMain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _QuizMainState();
  }

}

class _QuizMainState extends State<QuizMain>{
  
  DarkThemeProvider themeChangeProvider = new DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }
  

  final questions = const [
      {'questionText': 'What is Your Favourite Subject?',
      'answers':[{'text':'Data Structure','score': 10},
      {'text':'OOT','score': 5},
      {'text':'DIC','score': 3},
      {'text':'Not EDC','score': 0}
      ]}
      ,
      {'questionText': 'What is Your Favourite place in the college?','answers':[
        {'text':'Library(Duhh)','score': 10},
        {'text':'Garden','score': 5},
        {'text':'Department','score': 3},
        {'text':'Canteen Ofcourse','score': 1}
      ]}
      ,
      {'questionText': 'What do you think is the fair price for the Canteen Vali chai?','answers':[
        {'text':'Rs. 7','score': 10},
        {'text':'Rs 6','score': 5},
        {'text':'Rs 5','score': 3},
        {'text':'Dattakrupa is love','score': 1},
      ]},
      {'questionText': 'What what what...?','answers':[
        {'text':'Null','score': 10},
        {'text':'nikal','score': 5},
        {'text':'ho gaya','score': 3},
        {'text':'chal na chutiye','score': 1},
      ]}
      
    ];
  int _question_index = 0;
  var totalScore = 0;

  void _restartQuiz(){
    setState(() {
      _question_index = 0;
      totalScore = 0;
    });

  }

  void _answerChoosen(int score){
    totalScore= totalScore+score;
    setState(() {
      _question_index +=1;
    });
  }


  Widget build(BuildContext context){
    
        
    return Scaffold(     

      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("CET Quiz"),),
      body: _question_index < questions.length 
      ? Quiz(answerChoosen: _answerChoosen, questionIndex: _question_index,questions: questions,)
       : Result(totalScore,_restartQuiz),
        

      
    
    
    );
  }
  


}
