

import 'package:flutter/material.dart';
import 'package:messengerclone/screens/conversations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messenger Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF1D1E33)
        ),
        backgroundColor: Colors.green
      ),
         home: Directionality(child: Conversations(),
         textDirection: TextDirection.ltr,),
    );
  }
}



