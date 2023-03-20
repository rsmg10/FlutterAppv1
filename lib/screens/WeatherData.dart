import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeatherData extends StatefulWidget {
  const WeatherData({Key? key}) : super(key: key);

  @override
  State<WeatherData> createState() => _weatherData();
}

class _weatherData extends State<WeatherData> {


  Future<String> GetData() async {
    var posts = await http.get(Uri.https('jsonplaceholder.typicode.com', 'posts'));

      final List parsedList = json.decode(posts.body);
      List<jsoner> rxList = parsedList.map((e) => jsoner.fromJson(e)).toList();

    for (var value in rxList) {
      print(value.id);
    }
    return "this is me ";
  }

  @override
  void initState() {
    super.initState();
    GetData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("sdfsdf"),
        backgroundColor: Colors.red,
      ),
      body: Center(),
    );
  }
}

class jsoner {
  int userId;
  int id;
  String title;
  String body;

  jsoner({required this.id, required this.userId, required this.body, required this.title});

  factory jsoner.fromJson(Map<String, dynamic> json){
    return jsoner(body: json['body'] as String,
      id: json['id'] as int,
      title: json['title'] as String,
      userId: json['userId'] as int,
    );
  }



}
