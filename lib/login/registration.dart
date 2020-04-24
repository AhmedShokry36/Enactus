import 'package:enactus_nca/BottomNavBar.dart';
import 'package:enactus_nca/bottom_nav/home.dart';
import 'package:enactus_nca/bottom_nav/notifications.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:enactus_nca/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class registration  extends StatefulWidget {
  @override
  _registration  createState() => _registration();
}

class _registration  extends State<registration > with SingleTickerProviderStateMixin {

  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: Duration(seconds: 1),vsync: this,);
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceIn);
    controller.forward();
     /* animation.addListener((status) {
        if (status==AnimationStatus.completed){
          controller.reverse(from: 1.0);
        }else (status== AnimationStatus.dismissed){
          controller.forward();
        }
      });*/
      controller.addListener((){
        setState(() {});
          print(controller.value);
      });
  }
    
  // final String logo = 'img/enplus.png';
  final _auth =FirebaseAuth.instance;
  String email;
  String password;
  TextEditingController _EmailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SingleChildScrollView(
          child: Card(
            margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
            color: Color.fromRGBO(253, 194, 35, 1.0),
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(45.0),
              borderSide: BorderSide.none,
            ),
            child: Column(
              children: <Widget>[
                 Container(
                        margin: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                        child: Text(
                          "Sign up".toUpperCase(),
                          style: TextStyle(
                              color:  Color.fromRGBO(25, 53, 93, 1.0),
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                Container(   
                  child: Column(
                   children: <Widget>[
                        SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
                  padding: const EdgeInsets.all(1.0),
                  width: double.infinity,
                  child: TextField(
                  /*  onChanged: (value){
                      email = value;
                    },*/
                    controller: _EmailController,
                    scrollPadding: const EdgeInsets.all(30.0),
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      icon: Icon(Icons.info_outline),
                      contentPadding: const EdgeInsets.all(10.0),
                      hintText: "ID",
                      fillColor: Colors.amber.withOpacity(0.7),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
                  padding: const EdgeInsets.all(1.0),
                  width: double.infinity,
                  child: TextField(
                  /*  onChanged: (value){
                      email = value;
                    },*/
                    controller: _EmailController,
                    scrollPadding: const EdgeInsets.all(30.0),
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      contentPadding: const EdgeInsets.all(10.0),
                      hintText: "User name",
                      fillColor: Colors.amber.withOpacity(0.7),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
                  padding: const EdgeInsets.all(1.0),
                  width: double.infinity,
                  child: TextField(
                  /*  onChanged: (value){
                      email = value;
                    },*/
                    controller: _EmailController,
                    scrollPadding: const EdgeInsets.all(30.0),
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      icon: Icon(Icons.mail),
                      contentPadding: const EdgeInsets.all(10.0),
                      hintText: "Email",
                      filled: false,
                      fillColor: Colors.amber.withOpacity(0.7),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
                  padding: const EdgeInsets.all(1.0),
                  width: double.infinity,
                  child: TextField(
                    obscureText: true,
                    cursorColor: Colors.amber,
                    textAlign: TextAlign.start,
                    /* onChanged: (value){
                      password = value;
                    },*/
                    controller: _passwordController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10.0),
                      icon: Icon(Icons.lock),
                      hintText: "Password",
                      filled: false,
                      fillColor: Colors.blue.withOpacity(0.9),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
                  padding: const EdgeInsets.all(1.0),
                  width: double.infinity,
                  child: TextField(
                  /*  onChanged: (value){
                      email = value;
                    },*/
                    controller: _EmailController,
                    scrollPadding: const EdgeInsets.all(30.0),
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      icon: Icon(Icons.contact_phone),
                      contentPadding: const EdgeInsets.all(10.0),
                      hintText: "number",
                      filled: false,
                      fillColor: Colors.amber.withOpacity(0.7),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
          
                Hero(
                  tag: 'button1',
                   child: MaterialButton(
                            
                            onPressed: () async{
                              try {
                                   final newUser=await _auth.createUserWithEmailAndPassword(email: _EmailController.text, password: _passwordController.text);
                                  if(newUser !=null){
                                    Navigator.of(context).pushReplacementNamed('/login');
                                  }
                              }catch (e){
                                print(e);
                              }
                           
                            },

                            color: Color.fromRGBO(25, 53, 93, 1.0),
                            minWidth: 50,
                            
                            padding: EdgeInsets.symmetric(
                              
                                vertical: 10, horizontal: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.chevron_right,
                              size: 30,
                              color: Color.fromRGBO(253, 194, 35, 1.0),
                            ),
                   )
                ),
                SizedBox(
                  height: 30.0,
                ),
                   ] 
                  ),
                ),
                
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
