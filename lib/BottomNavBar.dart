import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:enactus_nca/BottomNavBar.dart';
import 'package:enactus_nca/bottom_nav/notifications.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:enactus_nca/bottom_nav/home.dart';
import 'package:enactus_nca/bottom_nav/profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}
final BottomNavBar  _bottomNavBar = BottomNavBar();
final home  _home = home();
final notifications  _notifications = notifications();
final profile  _profile = profile();
//final LoginScreen  _profile = LoginScreen();
Widget _showpage =new home();

Widget _pagechoser (int page){

  switch(page) {
    case 0:
    return _home;
    break;
    case 1:
    return _notifications;
    break;
    case 2:
    return _home;
    break;
    case 3:
    return _profile;
    break;
    case 4:
    return _home;
    break;
    default:
    return new Container();
  }
}
@override

class _BottomNavBarState extends State<BottomNavBar> {
  static const String id = 'nav';
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor:  Color.fromRGBO(26, 69, 131, 1.0),
        leading: Builder(
            builder: (context) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('img/en.png'),
                        ),
                      ),
                    ),
                  ),
                )),
        actions: <Widget>[
           Hero(
             tag: 'Icon1',
                        child: new IconButton(
                icon: Icon(
                  FontAwesomeIcons.cog,
                  color: Color.fromRGBO(253, 194, 35, 1.0),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      new MaterialPageRoute(builder: (context) => new profile()));
                }),
           ),
              Hero(
                tag: 'Icon2',
                              child: new IconButton(
                icon: Icon(
                  FontAwesomeIcons.lock,
                  color: Color.fromRGBO(253, 194, 35, 1.0),
                ),
                onPressed: () {
                 FirebaseAuth.instance.signOut()
                 .then((value){
                        Navigator.of(context).pushReplacementNamed('/ladingpage');
                      }).catchError((e){
                        print(e);
                      });
                }),
              ),
        ],
       // title: Text('Home',),
      ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: <Widget>[
          Icon(FontAwesomeIcons.home, size:30,color: Color.fromRGBO(253, 194, 35, 1.0),),
          Icon(Icons.notifications_active, size:30,color: Color.fromRGBO(253, 194, 35, 1.0),),
          Icon(FontAwesomeIcons.edit,size:30,color: Color.fromRGBO(253, 194, 35, 1.0),),
          Icon( FontAwesomeIcons.user, size:30,color: Color.fromRGBO(253, 194, 35, 1.0),),
          Icon(FontAwesomeIcons.facebookMessenger, size:30,color: Color.fromRGBO(253, 194, 35, 1.0),), 
          ],
          color: Color.fromRGBO(25, 53, 93, 1.0),
          backgroundColor:  Color.fromRGBO(26, 69, 131, 1.0),
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 400),
         onTap: (pageindex) {
            setState(() {
             _showpage = _pagechoser(pageindex);
            });
          },
          
        ),
        body: Container(

               child: _showpage,
        )
       
        );
  }
}