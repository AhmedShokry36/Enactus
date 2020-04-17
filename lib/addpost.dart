import 'package:enactus_nca/bottom_nav/Home.dart';
import 'package:enactus_nca/main.dart';
import 'package:flutter/material.dart';

class Addpost extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey;

    return Scaffold(
      appBar: AppBar(
        title:Text ("sadlaodk"),
      ),

      body: Form(
        key: formkey,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "post title",
                  border: OutlineInputBorder(),
                ),
              /*  validator: (val){
                  if(val.isEmpty){}
                }*/
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "post title",
                  border: OutlineInputBorder(),
                ),
              /*  validator: (val){
                  if(val.isEmpty){}
                }*/
              ),
            ),
          ],
        ),
      ),
               floatingActionButton: FloatingActionButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> home() ));
            },
              backgroundColor:  Color.fromRGBO(26, 69, 131, 1.0),
              child: Icon(Icons.add,color: Colors.amber,),
              
      ),
    );
  }
}
