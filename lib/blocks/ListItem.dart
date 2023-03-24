import 'dart:math';

import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(child: Icon(Icons.keyboard_option_key_rounded)),
          SizedBox(
            width: 4,
          ),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("from : mr bol3a"),
                Text("to : some other bol3a")
              ],
            ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
            ),
          )),
          SizedBox(
            width: 4,
          )
        ],
      ),
      // width: MediaQuery.of(context).size.width,
      // child:   Container(
      //   child: Column(
      //     children: List.generate(10, (index) => Text("lol")),
      //   )
      // ),
    );
  }
}
