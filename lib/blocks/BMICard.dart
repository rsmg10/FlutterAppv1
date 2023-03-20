import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({required this.colour, this.cardChild, required this.tapFunction});

  final Widget? cardChild;
  final Color colour;
  final Function() tapFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: tapFunction,
        child: Container(
          child: cardChild,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            color: colour,
          ),
        ),
      ),
    );
  }
}
