import 'package:flutter/material.dart';
import 'whatsappHome.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.green[600]
      ),
      home: whatsappHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

