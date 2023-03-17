import 'package:flutter/material.dart';

import '../screens/chat.dart';

class conversations extends StatefulWidget {
  const conversations({Key? key, required this.conversationList}) : super(key: key);
 final List conversationList;

  @override
  State<conversations> createState() => _conversationsState();
}

class _conversationsState extends State<conversations> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate( widget.conversationList.length, (index) {
        return InkWell(
          onTap: ()=>{
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return chat(data: index);
            },
          )
        ),
            print("we are here," + index.toString())
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  child: Stack(
                    children: <Widget>[
                      widget.conversationList[index]['hasStory'] ?
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                            Border.all(color: Colors.blueAccent, width: 3)),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,

                                image: DecorationImage(
                                    image: NetworkImage(
                                        widget.conversationList[index]['imageUrl']),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      )
                          : Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    widget.conversationList[index]['imageUrl']),
                                fit: BoxFit.cover)),
                      ),
                      widget.conversationList[index]['isOnline']
                          ? Positioned(
                        top: 38,
                        left: 42,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Color(0xFF66BB6A),
                              shape: BoxShape.circle,
                              border: Border.all(color: Color(0xFFFFFFFF), width: 3)),
                        ),
                      )
                          : Container()
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.conversationList[index]['name'],
                      style:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.w500, ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 135,
                      child: Text(
                        widget.conversationList[index]['message'] +
                            " - " +
                            widget.conversationList[index]['time'],
                        style: TextStyle(
                            fontSize: 15, color: Color(0xFF000000).withOpacity(0.7)),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
