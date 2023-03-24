import 'package:flutter/material.dart';

class TransfereMoneyPage extends StatefulWidget {
  const TransfereMoneyPage({Key? key}) : super(key: key);

  @override
  State<TransfereMoneyPage> createState() => _TransfereMoneyPageState();
}

class _TransfereMoneyPageState extends State<TransfereMoneyPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: CircleAvatar(
              foregroundImage: NetworkImage(
                  'https://w7.pngwing.com/pngs/511/518/png-transparent-search-engine-optimization-thumb-bitmoji-child-search-engine-optimization-hand-thumbnail.png'),
              radius: 60,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text("send money to,"),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Mohammed",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                  ),
                ),
                TextField(
                  cursorHeight: 20,
                  autofocus: false,
                  controller: TextEditingController(text: "Initial Text here"),
                  decoration: InputDecoration(
                    labelText: 'Enter your username',
                    hintText: "Enter your Name",
                    prefixIcon: Icon(Icons.star),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.grey, width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      gapPadding: 0.0,
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.red, width: 1.5),
                    ),
                  ),
                ),
              ],
            ),
            flex: 3,
          )
        ],
      ),
    );
  }
}
