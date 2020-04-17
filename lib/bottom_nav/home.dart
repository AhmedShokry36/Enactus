import 'package:flutter/material.dart';
import 'package:enactus_nca/main.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import 'package:enactus_nca/addpost.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.blue[800],
      /*appBar: AppBar(title: Text("Home"),
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
              color: Color.fromRGBO(26, 69, 131, 1.0),
              child: ListView.builder(
                
                physics: BouncingScrollPhysics(),
                itemBuilder: (context,i) {
                  return Card(
                    color: Colors.white,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                              
                                children: <Widget>[
                                  CircleAvatar(),
                                  
                                  Text("A_Shokry"),
                                ],
                              ),
                            ),
                            Text("quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"),
                            Text("asdsidjasidjsadiasdasdasdddddddddddddd"),
                            Text("asdsidjasadddddasdgfdsidjsadiasd"),
                             Row(
                              children: <Widget>[
                                IconButton(icon: Icon(Icons.link), onPressed: null),
                              ],
                             )
                          ],
                      ) ,
                    ),
                  );
                },
              ),
            ),
            
            floatingActionButton: FloatingActionButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Addpost() ));
            },
              backgroundColor:  Color.fromRGBO(26, 69, 131, 1.0),
              child: Icon(Icons.edit,color: Colors.amber,),  
      ),
      
     
    );
  }
}