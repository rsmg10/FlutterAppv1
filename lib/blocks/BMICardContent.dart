
import 'package:flutter/material.dart';

const textStyle = TextStyle(
  fontSize: 18,
  color: Colors.white,
);
class BMICardContent extends StatelessWidget {
  BMICardContent({required this.text, required this.icon});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: textStyle,
        )
      ],
    );
  }
}
