import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:enactus_nca/BottomNavBar.dart';
import 'package:enactus_nca/bottom_nav/home.dart';
import 'package:enactus_nca/login/loginUI.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Enactus plus',
      theme: ThemeData(),
    
      home: login(),
      routes: <String,WidgetBuilder>{
        '/ladingpage':(BuildContext context) =>new MyApp(),
        '/home':(BuildContext context) =>new BottomNavBar(),
       // '/registerpage':(BuildContext context) =>new registerpage(),
      },
    );
  }
}