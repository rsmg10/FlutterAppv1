import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomNumberWithButtons extends StatefulWidget {
  CustomNumberWithButtons({Key? key, required this.numController})
      : super(key: key);

  var numController = TextEditingController();

  @override
  State<CustomNumberWithButtons> createState() =>
      _CustomNumberWithButtonsState();
}

class _CustomNumberWithButtonsState extends State<CustomNumberWithButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: OutlinedButton(
              autofocus: true,
              onPressed: () {
                widget.numController.text =
                    (int.parse(widget.numController.text) - 1).toString();
              },
              child: Text("-", style:
                TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,

                ),),
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                      side: BorderSide(color: Colors.red))),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 40,
              width: 70,
              child: Material(
                elevation: 0.2,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    label: Text("Amount"),


                    // filled: true,
                    // counterStyle: TextStyle(color: Colors.green),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.all(10),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid,
                          width: 1,
                          strokeAlign: StrokeAlign.inside),
                      gapPadding: 0,
                    ),
                  ),
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  controller: widget.numController,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style: TextStyle(),
                ),
              ),
            ),
          ),
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                widget.numController.text =
                    (int.parse(widget.numController.text) + 1).toString();
              },
              child: Text("+"),

              style: OutlinedButton.styleFrom(
                backgroundColor: Color(12321546),
                side: BorderSide.none ,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Map<int, Color> color = {
    50: Color.fromRGBO(255, 255, 87, .1),
    100: Color.fromRGBO(255, 255, 255, .2),
    200: Color.fromRGBO(255, 255, 255, .3),
    300: Color.fromRGBO(255, 255, 255, .5),
    400: Color.fromRGBO(255, 255, 255, .5),
    500: Color.fromRGBO(255, 255, 255, .6),
    600: Color.fromRGBO(255, 255, 255, .7),
    700: Color.fromRGBO(255, 255, 255, .8),
    800: Color.fromRGBO(255, 255, 255, .9),
    900: Color.fromRGBO(255, 255, 255, 1),
  };
}
