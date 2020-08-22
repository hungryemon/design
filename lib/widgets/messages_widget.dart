import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagesWidget extends StatefulWidget {
  static const routeName = '/home_screen';
  @override
  _MessagesWidgetState createState() => _MessagesWidgetState();
}

class _MessagesWidgetState extends State<MessagesWidget>{
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(child: Text('MESSAGES')),

    );
  }
}