import 'package:flutter/material.dart';
import 'package:messengerclone/blocks/chatsList.dart';
import 'package:messengerclone/blocks/stories.dart';

import '../blocks/SideList.dart';
import 'MyProfile.dart';

class Conversations extends StatefulWidget {
  @override
  _ConversationsState createState() => _ConversationsState();
}

class _ConversationsState extends State<Conversations> {
  TextEditingController _searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideList(),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 15),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: InkWell(
                      onTap: ()=>{
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return MyProfile();
                        },
                        )
                        ),
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://randomuser.me/api/portraits/men/11.jpg"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),

          ),
                    Text(
                      "Chats",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.edit)
                ],
              ),
                SizedBox(
                  height: 15,
                ),
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFFe9eaec),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: TextField(
                  cursorColor: Color(0xFF000000),
                  controller: _searchController,
                  decoration: InputDecoration(
                    prefix: Icon(
                      Icons.search,
                      color: Color(0xFF000000).withOpacity(0.5),
                    ),
                    border: InputBorder.none ,
                    hintText: "search them people"
                  ),
                ),
              ),
              stories(storyList: storyList),
              conversations(conversationList: conversationList,)
            ],
          ),
        ),
      ),
    );
  }
}
List storyList = [
  {
    "name": "Novac",
    "imageUrl": "https://randomuser.me/api/portraits/men/31.jpg",
    "isOnline": true,
    "hasStory": true,
  },
  {
    "name": "Derick",
    "imageUrl": "https://randomuser.me/api/portraits/men/81.jpg",
    "isOnline": false,
    "hasStory": false,
  },
  {
    "name": "Mevis",
    "imageUrl": "https://randomuser.me/api/portraits/women/49.jpg",
    "isOnline": true,
    "hasStory": false,
  },
  {
    "name": "Emannual",
    "imageUrl": "https://randomuser.me/api/portraits/men/35.jpg",
    "isOnline": true,
    "hasStory": true,
  },
  {
    "name": "Gracy",
    "imageUrl": "https://randomuser.me/api/portraits/women/56.jpg",
    "isOnline": false,
    "hasStory": false,
  },
  {
    "name": "Robert",
    "imageUrl": "https://randomuser.me/api/portraits/men/36.jpg",
    "isOnline": false,
    "hasStory": true,
  }
];
List conversationList = [
  {
    "name": "Novac",
    "imageUrl": "https://randomuser.me/api/portraits/men/31.jpg",
    "isOnline": true,
    "hasStory": true,
    "message": "Where are you?",
    "time": "5:00 pm"
  },
  {
    "name": "Derick",
    "imageUrl": "https://randomuser.me/api/portraits/men/81.jpg",
    "isOnline": false,
    "hasStory": false,
    "message": "It's good!!",
    "time": "7:00 am"
  },
  {
    "name": "Mevis",
    "imageUrl": "https://randomuser.me/api/portraits/women/49.jpg",
    "isOnline": true,
    "hasStory": false,
    "message": "I love You too!",
    "time": "6:50 am"
  },
  {
    "name": "Emannual",
    "imageUrl": "https://randomuser.me/api/portraits/men/35.jpg",
    "isOnline": true,
    "hasStory": true,
    "message": "Got to go!! Bye!!",
    "time": "yesterday"
  },
  {
    "name": "Gracy",
    "imageUrl": "https://randomuser.me/api/portraits/women/56.jpg",
    "isOnline": false,
    "hasStory": false,
    "message": "Sorry, I forgot!",
    "time": "2nd Feb"
  },
  {
    "name": "Robert",
    "imageUrl": "https://randomuser.me/api/portraits/men/36.jpg",
    "isOnline": false,
    "hasStory": true,
    "message": "No, I won't go!",
    "time": "28th Jan"
  },
  {
    "name": "Lucy",
    "imageUrl": "https://randomuser.me/api/portraits/women/56.jpg",
    "isOnline": false,
    "hasStory": false,
    "message": "Hahahahahaha",
    "time": "25th Jan"
  },
  {
    "name": "Emma",
    "imageUrl": "https://randomuser.me/api/portraits/women/56.jpg",
    "isOnline": false,
    "hasStory": false,
    "message": "Been a while!",
    "time": "15th Jan"
  },
  {
    "name": "Emma",
    "imageUrl": "https://randomuser.me/api/portraits/women/56.jpg",
    "isOnline": false,
    "hasStory": false,
    "message": "Been a while!",
    "time": "15th Jan"
  },
  {
    "name": "Emma",
    "imageUrl": "https://randomuser.me/api/portraits/women/56.jpg",
    "isOnline": false,
    "hasStory": false,
    "message": "Been a while!",
    "time": "15th Jan"
  },
  {
    "name": "Emma",
    "imageUrl": "https://randomuser.me/api/portraits/women/56.jpg",
    "isOnline": false,
    "hasStory": false,
    "message": "Been a while!",
    "time": "15th Jan"
  },
  {
    "name": "Emma",
    "imageUrl": "https://randomuser.me/api/portraits/women/56.jpg",
    "isOnline": false,
    "hasStory": false,
    "message": "Been a while!",
    "time": "15th Jan"
  },
  {
    "name": "Emma",
    "imageUrl": "https://randomuser.me/api/portraits/women/56.jpg",
    "isOnline": false,
    "hasStory": false,
    "message": "Been a while!",
    "time": "15th Jan"
  },
  {
    "name": "Emma",
    "imageUrl": "https://randomuser.me/api/portraits/women/56.jpg",
    "isOnline": false,
    "hasStory": false,
    "message": "Been a while!",
    "time": "15th Jan"
  }
];

