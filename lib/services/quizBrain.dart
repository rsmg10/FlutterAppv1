import 'package:flutter/material.dart';
import 'package:messengerclone/models/question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizBrain{
int _listPosition = 0;
  List<Question> question =[
    Question("0 are you ok?", true),
    Question("1 are you ok?", true),
    Question("2 are you hard working", true),
    Question("3 will you make excuses?", true),
    Question("4 will you make excuses?", true),
    Question("5 will you make excuses?", true),
  ];

  String GetQuestionText() => question[_listPosition].question;
  bool GetQuestionAnswer() => question[_listPosition].answer;

  bool IsCorrectAnswer(bool ans) => question[_listPosition].answer == ans;

  Question GetNextQuestion(){
    if (_listPosition >= question.length - 1) {
      _listPosition = 0;
      return question[_listPosition];
     }
    _listPosition++;
    return question[_listPosition];
  }


List<Icon> resultList  = [

];

  void AddResultRecord(bool isCorrect){
    resultList.add(Icon(isCorrect? Icons.check : Icons.close, color: isCorrect? Colors.green : Colors.red,));
  }

List<Icon> GetResultList() => resultList;



}