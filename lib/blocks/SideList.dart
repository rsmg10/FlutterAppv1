import 'package:flutter/material.dart';
import 'package:messengerclone/screens/MyProfile.dart';

import '../screens/BMI.dart';
import '../screens/Quizzler.dart';
import '../screens/WeatherData.dart';
import '../screens/Xylophone.dart';
import '../screens/Dicee.dart';
import '../screens/NewStuff.dart';

class SideList extends StatefulWidget {
  SideList({Key? key}) : super(key: key);

  @override
  State<SideList> createState() => _SideListState();
}

class _SideListState extends State<SideList> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        SizedBox(
          child: DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal.shade200,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12)),
            ),
            curve: Curves.easeInCirc,
            child: Container(
                child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    radius: 35.0,
                    child: ClipRRect(
                      child: Image.asset(
                        'lib/images/profilepic.png',
                        height: 100,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Radwan Gusbi",
                      style: TextStyle(fontFamily: "Cairo", fontSize: 25)),
                )
              ],
            )),
          ),
        ),
        ListTile(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MyProfile();
                },
              ),
            )
          },
          leading: Icon(Icons.perm_device_info_rounded),
          title: Text(
            "My Profile",
          ),
        ),
        ListTile(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Dicee();
                },
              ),
            )
          },
          leading: Icon(Icons.gamepad_rounded),
          title: Text(
            "Diccee",
          ),
        ),
        ListTile(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Xylophone();
                },
              ),
            )
          },
          leading: Icon(Icons.voice_chat_outlined),
          title: Text(
            "Xylophone",
          ),
        ),        ListTile(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Quizzler();
                },
              ),
            )
          },
          leading: Icon(Icons.question_answer_outlined),
          title: Text(
            "Quizzler",
          ),
        ),
        ListTile(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return BMI();
                },
              ),
            )
          },
          leading: Icon(Icons.question_answer_outlined),
          title: Text(
            "BMI",
          ),
        ), ListTile(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return NewStuff();
                },
              ),
            )
          },
          leading: Icon(Icons.add),
          title: Text(
            "new stuff",
          ),
        ),

        ListTile(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return WeatherData();
                },
              ),
            )
          },
          leading: Icon(Icons.cloud_circle),
          title: Text(
            "Weather Data",
          ),
        ),
        ListTile(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return WeatherData();
                },
              ),
            )
          },
          leading: Icon(Icons.chrome_reader_mode_outlined),
          title: Text(
            "Kottab Signin",
          ),
        ),
      ],
    ));
  }
}
//InkWell(
//         child: Text("data"),
//         onTap: ()=>{
//         Navigator.push(context, MaterialPageRoute(builder: (context){
//           return MyProfile();
//         },
//         ),
//         )
//         }
//         ),
