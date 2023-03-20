import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Kottab extends StatefulWidget {
  const Kottab({Key? key}) : super(key: key);

  @override
  State<Kottab> createState() => _kottab();
}

class _kottab extends State<Kottab> {



  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("sdfsdf"),
        backgroundColor: Colors.red,
      ),

      body: Center(

      ),
    );
  }
}

