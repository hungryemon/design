import 'package:design/screens/details_screen.dart';
import 'package:design/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(UiDesign());

class UiDesign extends StatefulWidget {
  @override
  _UiDesignState createState() => _UiDesignState();
}

class _UiDesignState extends State<UiDesign> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Intro',
          theme: ThemeData(
              primaryColor: Colors.tealAccent
          ),
          home: HomeScreen(),
          routes: {
            HomeScreen.routeName: (ctx) => HomeScreen(),
            DetailsScreen.routeName: (ctx) => DetailsScreen(),

          });
  }
}