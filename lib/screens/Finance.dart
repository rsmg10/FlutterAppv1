import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'CustomProfile.dart';
import 'HomeFinancial.dart';
import 'NewStuff.dart';

class Financials extends StatefulWidget {
  Financials({Key? key}) : super(key: key);

  @override
  State<Financials> createState() => _FinancialsState();
}

class _FinancialsState extends State<Financials> {
  var pageIndex = 0;
  var views = <Widget>[];
  Icon customIcon =  const Icon(Icons.search);

  @override
  initState() {
    super.initState();

    views.add(HomeFinancial());
    views.add(NewStuff());
    views.add(CustomProfile());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: customIcon,
            onPressed: () {
              setState(() {
              if(customIcon.icon == Icons.search){
                customIcon = Icon(Icons.close);
              }else
              {
                customIcon = Icon(Icons.search);
              }
              });
            },
          )
        ],
      ),
      body: views[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.codePullRequest),
            label: 'Transfer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget getWidget(Color color) {
    return Center(
      child: Container(
        width: 50,
        height: 50,
        color: color,
      ),
    );
  }
}
