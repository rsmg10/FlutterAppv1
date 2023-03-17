import 'package:flutter/material.dart';

import '../blocks/CustomMessageBox.dart';
import '../blocks/CustomTypingField.dart';

class chat extends StatefulWidget {
  const chat({Key? key, required this.data}) : super(key: key);

  final int data;

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  // late final FocusNode focusNode = FocusNode();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.red,
        ),
        body:Column(
          children: [
            Expanded(
                flex: 10,
                child: ListView.builder(
                    itemCount: chatList.length,
                    itemBuilder: (c,i){
                  return CustomMessageBox(data: chatList[i],);

                })),
            Expanded(
                child:
            TextField(

              onChanged: (value) =>{
                print(value)
              },
                decoration: InputDecoration(
                  border: InputBorder.none,

                  suffixIcon: IconButton(icon: Icon(Icons.ac_unit_outlined), onPressed: (){}),

                  prefixIcon: IconButton(icon: Icon(Icons.ac_unit_outlined), onPressed: (){}),
                  icon: Icon(Icons.alarm,),
                    hintText: "amazing")
            )
            ),
          ],
        )
    );
  }
}

// Column(
// mainAxisAlignment: MainAxisAlignment.end,
// children: List<Widget>.generate(chatList.length, (i) => InkWell(
//
// onTap: ()=>{},
// child: Padding(
//
// padding: const EdgeInsets.all(2),
//
// child: ,

// child: Text(chatList[i]["name"]),
// ),
// ),
//
// )
// ),


class msgObj {
  String name;
  bool byMe;
  String time;
  bool hasAttachment;
  String message;
  String attachmentUrl;
  String attachementType;
  int status;
  String profileImage;

  msgObj({required
  this.name,
    required this.byMe,
    required this.time,
    required this.hasAttachment,
    required this.message,
    required this.attachmentUrl,
    required this.attachementType,
    required this.status,
    required this.profileImage});
}

List<msgObj> chatList = [

  msgObj(name: "Derick",
      byMe: false,
      time: "2023-01-01",
      hasAttachment: false,
      message: "hi there ",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),

  msgObj(name: "Radwan",
      byMe: true,
      time: "2023-01-01",
      hasAttachment: false,
      message: "how are you mate? ",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),

  msgObj(name: "Derick",
      byMe: false,
      time: "2023-01-01",
      hasAttachment: false,
      message: "am all good, you ?",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),

  msgObj(name: "Radwan",
      byMe: true,
      time: "2023-01-01",
      hasAttachment: false,
      message: "yeah grate mate",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),

  msgObj(name: "Radwan",
      byMe: true,
      time: "2023-01-01",
      hasAttachment: false,
      message: "yeah grate mate",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),

  msgObj(name: "Radwan",
      byMe: true,
      time: "2023-01-01",
      hasAttachment: false,
      message: "yeah grate mate",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),
  msgObj(name: "Radwan",
      byMe: false,
      time: "2023-01-01",
      hasAttachment: false,
      message: "yeah grate mate",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),
  msgObj(name: "Radwan",
      byMe: true,
      time: "2023-01-01",
      hasAttachment: false,
      message: "yeah grate mate",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),
  msgObj(name: "Radwan",
      byMe: false,
      time: "2023-01-01",
      hasAttachment: false,
      message: "yeah grate mate",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),

  msgObj(name: "Derick",
      byMe: false,
      time: "2023-01-01",
      hasAttachment: false,
      message: "hi there ",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),

  msgObj(name: "Radwan",
      byMe: true,
      time: "2023-01-01",
      hasAttachment: false,
      message: "how are you mate? ",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),

  msgObj(name: "Derick",
      byMe: false,
      time: "2023-01-01",
      hasAttachment: false,
      message: "am all good, you ?",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),

  msgObj(name: "Radwan",
      byMe: true,
      time: "2023-01-01",
      hasAttachment: false,
      message: "yeah grate mate",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),

  msgObj(name: "Radwan",
      byMe: true,
      time: "2023-01-01",
      hasAttachment: false,
      message: "yeah grate mate",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),

  msgObj(name: "Radwan",
      byMe: true,
      time: "2023-01-01",
      hasAttachment: false,
      message: "yeah grate mate",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),
  msgObj(name: "Radwan",
      byMe: false,
      time: "2023-01-01",
      hasAttachment: false,
      message: "yeah grate mate",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),
  msgObj(name: "Radwan",
      byMe: true,
      time: "2023-01-01",
      hasAttachment: false,
      message: "yeah grate mate",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),
  msgObj(name: "Radwan",
      byMe: false,
      time: "2023-01-01",
      hasAttachment: false,
      message: "yeah grate mate",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),


  msgObj(name: "Derick",
      byMe: false,
      time: "2023-01-01",
      hasAttachment: false,
      message: "hi there ",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),

  msgObj(name: "Radwan",
      byMe: true,
      time: "2023-01-01",
      hasAttachment: false,
      message: "how are you mate? ",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),

  msgObj(name: "Derick",
      byMe: false,
      time: "2023-01-01",
      hasAttachment: false,
      message: "am all good, you ?",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),

  msgObj(name: "Radwan",
      byMe: true,
      time: "2023-01-01",
      hasAttachment: false,
      message: "yeah grate mate",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),

  msgObj(name: "Radwan",
      byMe: true,
      time: "2023-01-01",
      hasAttachment: false,
      message: "yeah grate mate",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),

  msgObj(name: "Radwan",
      byMe: true,
      time: "2023-01-01",
      hasAttachment: false,
      message: "yeah grate mate",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),
  msgObj(name: "Radwan",
      byMe: false,
      time: "2023-01-01",
      hasAttachment: false,
      message: "yeah grate mate",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),
  msgObj(name: "Radwan",
      byMe: true,
      time: "2023-01-01",
      hasAttachment: false,
      message: "yeah grate mate",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),
  msgObj(name: "Radwan",
      byMe: false,
      time: "2023-01-01",
      hasAttachment: false,
      message: "yeah grate mate",
      attachmentUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      attachementType: "png",
      status: 1,
      profileImage: "https://randomuser.me/api/portraits/men/81.jpg"),

];