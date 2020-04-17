import 'package:flutter/material.dart';
import 'package:enactus_nca/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class notifications extends StatefulWidget {
  @override
  _notificationsState createState() => _notificationsState();
}

class _notificationsState extends State<notifications> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.blue[800],
      /*appBar: AppBar(title: Text("notifications"),
      backgroundColor:  Color.fromRGBO(26, 69, 131, 1.0),
      actions: <Widget>[
           new IconButton(
              icon: Icon(
                FontAwesomeIcons.cog,
                color: Color.fromRGBO(253, 194, 35, 1.0),
              ),
             /* onPressed: () {
                Navigator.of(context).push(
                  //  new MaterialPageRoute(builder: (context) => new Setting()));
              }*/),
              new IconButton(
              icon: Icon(
                FontAwesomeIcons.lock,
                color: Color.fromRGBO(253, 194, 35, 1.0),
              ),
              onPressed: () {
               /*FirebaseAuth.instance.signOut()
               .then((value){
                      Navigator.of(context).pushReplacementNamed('/ladingpage');
                    }).catchError((e){
                      print(e);
                    });*/
              }),
        ],
      
      ),*/
      
      
      body: 
            Container(
              
              child: ListView.builder(
                
                physics: BouncingScrollPhysics(),
                itemBuilder: (context,i) {
                  return Card(
                    color: Colors.white60,
                    child: Container(
                      height: 150,
                      child: Column(
                          children: <Widget>[
                        
                            Text("asdsidjasidjsadiasd"),
                            Text("asdsidjasidjsadiasd"),
                            Text("asdsidjasidjsadiasd"),

                             
                          ],
                      ) ,
                    ),
                  );
                },
              ),
            ),
    
      
    );
  }
}