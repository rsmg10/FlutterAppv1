import 'package:flutter/material.dart';

import 'CustomProfile.dart';
import 'CustomOffice.dart';
import 'TransfereMoneyPage.dart';

class HomeFinancial extends StatefulWidget {
  const HomeFinancial({Key? key}) : super(key: key);

  @override
  State<HomeFinancial> createState() => _HomeFinancialState();
}

class _HomeFinancialState extends State<HomeFinancial> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.person)),
                Tab(icon: Icon(Icons.auto_graph)),
                Tab(icon: Icon(Icons.telegram)),
                Tab(icon: Icon(Icons.telegram)),
                Tab(icon: Icon(Icons.directions_bike)  ),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              CustomProfile(),
              CustomOffice(),
              TransfereMoneyPage(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );

  }
}
