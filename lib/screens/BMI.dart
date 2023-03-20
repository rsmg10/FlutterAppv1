import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../blocks/BMICard.dart';
import '../blocks/BMICardContent.dart';

const bottomContainerHeight = 80;
const activeCardColour = Color(0xFF373857);
const inactiveCardColour = Color(0xFF2B2D38);
const BottomContainerColour = Color(0xFFEB1555);

enum Gender { Male, Female }

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;
  Gender? selectedGender;
  String heightLabel = "cm";
  String height = "0";
  double sliderPosition = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomCard(
                      tapFunction: () {
                        setState(() {
                          selectedGender = Gender.Male;
                        });
                      },
                      colour: (selectedGender == Gender.Male)
                          ? activeCardColour
                          : inactiveCardColour,
                      cardChild: BMICardContent(
                        text: "MALE",
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                  Expanded(
                    child: CustomCard(
                      tapFunction: () {
                        setState(() {
                          selectedGender = Gender.Female;
                        });
                      },
                      colour: (selectedGender == Gender.Female)
                          ? activeCardColour
                          : inactiveCardColour,
                      cardChild: BMICardContent(
                          text: "FEMALE", icon: FontAwesomeIcons.female),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text("Height"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text(height),
                        Text(heightLabel)
                      ],
                    ),
                    Slider(
                        value: sliderPosition,
                        min: 0,
                        max: 250,
                        activeColor: Colors.pink,
                        inactiveColor: Colors.grey,
                        onChanged: (double val) {
                          setState(() {
                            sliderPosition = val;
                            if(val >= 100){
                              heightLabel = "m";
                                height = (val / 100 ).toStringAsFixed(2);
                            }else {
                            height = val.toStringAsFixed(2);
                            heightLabel = "cm";
                            }
                          });
                        })
                  ],
                ),
                margin: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: CustomCard(
                    tapFunction: () {},
                    colour: Color(0xFF1D1E33),
                  )),
                  Expanded(
                      child: CustomCard(
                    tapFunction: () {},
                    colour: Color(0xFF1D1E33),
                  )),
                ],
              ),
              // Container(
              //   width: double.infinity,
              //   height: 60,
              // )
            ),
          ],
        ),
      ),
    );
  }
}
