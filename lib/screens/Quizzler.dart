import 'package:flutter/material.dart';
import 'package:messengerclone/models/question.dart';
import 'package:messengerclone/services/quizBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Quizzler extends StatefulWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  State<Quizzler> createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {


  QuizBrain question = new QuizBrain();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
        body: Column(
          children: [
            Expanded(
              flex: 3,
                child: Center(
              child: Text(question.GetQuestionText()),
            )),
            Expanded(flex: 1,
                child: Center(
                  child: Column(
                    children: [
                      TextButton(onPressed: () {
                        Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();
                        setState(() {
                          question.AddResultRecord(question.IsCorrectAnswer(true));
                          question.GetNextQuestion();
                        });
                      },
                        child: Text("Yes"),
                      ),
                      TextButton(onPressed: () {
                        
                        setState(() {
                          question.AddResultRecord(question.IsCorrectAnswer(false));
                          question.GetNextQuestion();
                        });
                      },
                          child: Text("No")),
                      Row(
                        children: question.GetResultList(),
                      )
                    ],
                  ),
                )),
          ],
        ),
    );
  }
}
