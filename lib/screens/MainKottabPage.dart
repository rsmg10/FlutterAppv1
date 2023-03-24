import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:messengerclone/screens/WeatherData.dart';
import 'package:http/http.dart' as http;

class KottabPage extends StatefulWidget {
   KottabPage({Key? key, required this.email,required this.password}) : super(key: key);
String email, password;
  @override
  State<KottabPage> createState() => _KottabPageState();
}

class _KottabPageState extends State<KottabPage> {
  @override

  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Signin(widget.email,widget.password),
        builder: (ctx, snapshot) {
          if(snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            body: Center(
              child: Text(
                  'Result: ${snapshot.data}',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          );
          }
          else{
            return Scaffold(
              body: Center(
                child: Text(
                  "NOOOOOOOOOT",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            );
          }
        }
    );
  }

  Future<String> Signin(String e, String pass){



    return GetData();
  }
  Future<String> GetData() async {

    var posts = await http.get(Uri.https('jsonplaceholder.typicode.com', 'posts'));

    final List parsedList = json.decode(posts.body);

    List<jsoner> rxList = parsedList.map((e) => jsoner.fromJson(e)).toList();

    for (var value in rxList) {
      print(value.id);
    }
    return rxList.first.title;
  }

  Future<String> makePostRequest() async {
    final url = Uri.parse('http://10.101.111.47:46029/api/Auth/getstuff');
    final headers = {"Content-type": "application/json", "Access-Control-Allow-Origin": "*"};
    final json = '{"username": "m.masarat", "password": "aaAA11!!"}';
    final response = await http.get(url, headers: headers);
    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');
    return response.body;
  }
}
