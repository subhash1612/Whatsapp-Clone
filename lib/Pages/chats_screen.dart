import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/Models/chatscreen_Model.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: sampleData.length,
        itemBuilder: (context,i)
            {
              return Column(
                children: <Widget>[
                  Divider(
                    height: 10.0,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                    backgroundImage: NetworkImage(sampleData[i].avatarUrl),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(sampleData[i].name,
                        style: TextStyle(fontWeight:FontWeight.bold),),
                        Text(sampleData[i].time,
                        style: TextStyle(fontSize: 14.0,color: Colors.grey)
                        )
                      ],
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(sampleData[i].message,
                      style: TextStyle(fontSize: 15.0),),
                    ),
                  )
                ],
              );
            },
    );
  }
}
