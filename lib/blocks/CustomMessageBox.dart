import 'package:flutter/material.dart';

import '../screens/chat.dart';

class CustomMessageBox extends StatefulWidget {
  CustomMessageBox({Key? key, required msgObj this.data}) : super(key: key);
  final msgObj data;

  @override
  State<CustomMessageBox> createState() => _CustomMessageBoxState();
}

class _CustomMessageBoxState extends State<CustomMessageBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      alignment: AlignmentDirectional.bottomCenter,
      child: Row(
        mainAxisAlignment:
            widget.data.byMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(widget.data.message),
                  ),
                  alignment: widget.data.byMe
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  // color:widget.data.byMe? Colors.grey: Colors.blue,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(widget.data.byMe ? 15 : 2),
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(widget.data.byMe ? 2 : 15),
                          topRight: Radius.circular(15)),
                      // borderRadius: BorderRadius.horizontal(right: Radius.circular(10), left: Radius.elliptical(5, 2)),

                      color: widget.data.byMe ? Colors.green : Colors.blue,
                      border: Border.all(
                          color: Colors.black, strokeAlign: StrokeAlign.center)),
                ),
                Text(widget.data.time)
              ],
            ),
          )
        ],
      ),
    );
  }
}
