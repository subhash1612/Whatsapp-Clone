import 'package:flutter/material.dart';
import 'Pages/calls_screen.dart';
import 'Pages/camera_screen.dart';
import 'Pages/chats_screen.dart';
import 'Pages/status_screen.dart';

class whatsappHome extends StatefulWidget {
  @override
  _whatsappHomeState createState() => _whatsappHomeState();
}

class _whatsappHomeState extends State<whatsappHome>  with SingleTickerProviderStateMixin{

  TabController tab;
  @override
  void initState() {
    super.initState();
    tab = TabController(vsync: this,initialIndex: 1,length: 4);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Whatsapp"),
          elevation: 0.7,
          bottom: TabBar(
            controller: tab,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text : "CALLS"),
            ],
            indicatorColor: Colors.white,
          ),
          actions: <Widget>[
            Icon(Icons.search),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0)
            ),
            Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        children: <Widget>[
          Camera(),
          Chats(),
          Status(),
          Calls(),
        ],
        controller: tab,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message,color: Colors.white,),
      ),
    );
  }
}

