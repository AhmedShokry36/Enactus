import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/widgets.dart';


class users{
   
   addNewUser(user ,context){
     FirebaseDatabase.instance.reference().child('Users')
     .push().set({
        "email" :user.email,
        "password" :user.password,
     }).then((value){
        Navigator.of(context).pop();
        Navigator.of(context).pushReplacementNamed("/home");
     }).catchError((e){
       print(e);
     });
   }
}