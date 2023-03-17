import 'package:flutter/material.dart';
import 'dart:math';
class Dicee extends StatefulWidget {
  const Dicee({Key? key}) : super(key: key);

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  var leftNum = 1;// this is only created once
  var rightNum = 1;// this is only created once
  void changeNumbers(){

    leftNum = Random().nextInt(6)+ 1;
    rightNum = Random().nextInt(6)+1;
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Dice"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(children: [
          Expanded(
            child: TextButton(
            onPressed: () {
              setState(() {
                changeNumbers();
              });
            },
            child: Image.asset("lib/images/dice$leftNum.png") ,
        ),
          ),
          Expanded(child: TextButton(
          child: Image.asset("lib/images/dice$rightNum.png") ,
            onPressed: () {
              setState(() {
                changeNumbers();
              });
            },
          )),
        ]),
      ),
    );
  }
}
