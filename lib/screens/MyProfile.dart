import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("lib/images/profilepic.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Radwan Gusbi",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 24
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Software Developer",
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.teal.shade100,
                      fontWeight: FontWeight.w300,
                      fontSize: 28,
                    letterSpacing: 2
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: ListTile(
                    leading: Icon(Icons.phone,
                        color: Colors.teal.shade700),
                    title: Text("091- 156 1523",
                      style: TextStyle(
                          fontFamily: "Cario",
                          color: Colors.teal.shade700,
                          fontSize: 20
                      ),),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child:  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: ListTile(
                      leading:     Icon(Icons.email_outlined,
                          color: Colors.teal.shade700),
                      title:  Text("Radwan.sasi@yahoo.com",
                        style: TextStyle(
                            fontFamily: "Cario",
                            color: Colors.teal.shade700,
                            fontSize: 20
                        ),),
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
