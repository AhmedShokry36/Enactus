
import 'package:enactus_nca/BottomNavBar.dart';
import 'package:enactus_nca/bottom_nav/home.dart';
import 'package:enactus_nca/bottom_nav/notifications.dart';
import 'package:enactus_nca/login/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:enactus_nca/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class login extends StatefulWidget {
  static const String id = 'login';
  @override
  
  _login createState() => _login();
}
class _login extends State<login> {
  
   // final String logo = 'img/enplus.png';
   var _contraller =ScrollController() ;
  TextEditingController _EmailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Color.fromRGBO(26, 69, 131, 1.0),
      body: SafeArea(
        
          child: Container(
        height:double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(25, 53, 93, 1.0),
          Color.fromRGBO(25, 53, 93, 1.0),
          Color.fromRGBO(26, 69, 131, 1.0),
         
        ])),
        child: SingleChildScrollView(
          controller: _contraller,
                  child: Column(
         
             children: <Widget>[
                SizedBox( height: 80.0,),
                   Hero(
                     tag: 'en',
                        child: Container(
                        margin: const EdgeInsets.only(top: 0.0, bottom: 0.0,right: 15.0),
                        height:110,
                        child: Image.asset('img/enplus.png',fit: BoxFit.cover,)),
                   ),
                     
                 //     Image.asset('img/en.png',fit: BoxFit.fill,height: 50,),
                  SizedBox( height: 5.0,),
                     Container(
                       width: double.infinity,
                     //  height: MediaQuery.of(context).size.height *0.4,
                       child: sign_in(),
                      /* decoration: BoxDecoration(
                         color :Colors.amber,
                         shape: BoxShape.rectangle,
                         boxShadow: [
                           BoxShadow(
                             color: Colors.amber,
                             offset: Offset(4.0,4.0),
                             blurRadius: 15.0,
                             spreadRadius: 1.0
                           ),
                           BoxShadow(
                             color: Colors.amber,
                             offset: Offset(-4.0,-4.0),
                             blurRadius: 15.0,
                             spreadRadius: 1.0
                           ),
                         ]
                       ),*/
                     ),  
                     
                      ],
                    ),
        ),
                
              
                 
        
      )),
    );
  }
}