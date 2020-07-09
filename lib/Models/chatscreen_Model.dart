import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chatmodel {
  String avatarUrl;
  String name;
  String message;
  String time;

  Chatmodel({this.avatarUrl, this.name, this.message, this.time});
}

  List<Chatmodel> sampleData = [
    Chatmodel(
        avatarUrl: 'https://manipal.edu/content/dam/manipal/mu/mit/images/galleryImage/1-innovative-center-library-mit-facilities.jpg',
        name:'John',
        message: "hi",
        time: "10:29"
    ),
    Chatmodel(
        avatarUrl: 'https://manipal.edu/content/dam/manipal/mu/mit/images/galleryImage/1-innovative-center-library-mit-facilities.jpg',
        name:"Bill",
        message: "Hey",
        time: "10:35"
    ),
    Chatmodel(
        avatarUrl: 'https://manipal.edu/content/dam/manipal/mu/mit/images/galleryImage/1-innovative-center-library-mit-facilities.jpg',
        name:"Bob",
        message: "Yo",
        time: "20:10"
    ),
Chatmodel(
avatarUrl: 'https://manipal.edu/content/dam/manipal/mu/mit/images/galleryImage/1-innovative-center-library-mit-facilities.jpg',
name:"charles",
message: "How/'s Life",
time: "20:10"
),

  ];

