import 'package:enactus_nca/BottomNavBar.dart';
import 'package:enactus_nca/bottom_nav/home.dart';
import 'package:enactus_nca/login/registration.dart';
import 'package:enactus_nca/services/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:enactus_nca/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';


class sign_in extends StatefulWidget {
  @override
  _sign_in createState() => _sign_in();
}

class _sign_in extends State<sign_in> with SingleTickerProviderStateMixin {

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
  bool showSpinner =false;
  final _auth =FirebaseAuth.instance;
  String email;
  String password;
  TextEditingController _EmailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
          child: Container(
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
                            "Login".toUpperCase(),
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
                      controller: _EmailController,
                      scrollPadding: const EdgeInsets.all(30.0),
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
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
                  SizedBox(height: 10.0),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: FlatButton(
                      child: Text(
                        "forget password".toUpperCase(),
                        style: TextStyle(
                          color: Color.fromRGBO(25, 53, 93, 1.0),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Hero(
                    tag: 'button1',
                     child: MaterialButton(
                              onPressed:() async  {
                                setState(() {
                                  showSpinner =true;
                                });
                               try{
                                    final users =await _auth.signInWithEmailAndPassword(email:_EmailController.text, password:_passwordController.text);
                                   /* if(users !=null){
                                       Navigator.of(context).pushReplacementNamed('/home');
                                    }*/
                                     Navigator.of(context).pushReplacementNamed('/home');

                                setState(() {
                                  showSpinner =false;
                                });
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
                  Hero(
                    tag: 'button2',
                     child: MaterialButton(
                              onPressed:() async  {
                               try{
                                    final users =await _auth.signInWithEmailAndPassword(email:_EmailController.text, password:_passwordController.text);
                                   /* if(users !=null){
                                       Navigator.of(context).pushReplacementNamed('/home');
                                    }*/
                                   Navigator.of(context).push(
                              new MaterialPageRoute(builder: (context) => new registration()));
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
                                Icons.signal_wifi_off,
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
      ),
    );
  }
}
