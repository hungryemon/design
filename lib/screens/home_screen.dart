
import 'package:design/theme.dart';
import 'package:design/widgets/home_widget.dart';
import 'package:design/widgets/messages_widget.dart';
import 'package:design/widgets/profile_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    final _tabPages = <Widget>[
      HomeWidget(),
      MessagesWidget(),
      ProfileWidget()
    ];
    final _bottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
      BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), title: Text('Messages')),
      BottomNavigationBarItem(icon: Icon(Icons.person_outline), title: Text('Profile'))
    ];
    assert(_tabPages.length  == _bottomNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: _bottomNavBarItems,
      currentIndex: _currentIndex,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      fixedColor: seaBlue,
      onTap: (int index) {
        setState(() {
          try {

          } catch (e) {
            print("Error Loading Settings: $e");
          }
          _currentIndex = index;
        });
      },
    );

    return Scaffold(
      body: _tabPages[_currentIndex],
      bottomNavigationBar: bottomNavBar,

    );
  }
}