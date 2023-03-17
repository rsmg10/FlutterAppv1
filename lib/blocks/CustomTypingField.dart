import 'package:flutter/material.dart';

class CustomTypingField extends StatefulWidget {
  const CustomTypingField({Key? key}) : super(key: key);

  @override
  State<CustomTypingField> createState() => _CustomTypingFieldState();
}

class _CustomTypingFieldState extends State<CustomTypingField> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[

          TextField(
                decoration: InputDecoration(
                    hintText: "amazing")
            ),


      ],
    );
  }
}
