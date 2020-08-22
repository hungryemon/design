import 'package:design/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileWidget extends StatefulWidget {
  static const routeName = '/home_screen';
  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
//  final double infoHeight = 364.0;

  @override
  Widget build(BuildContext context) {
//    final double tempHeight = MediaQuery.of(context).size.height -
//        (MediaQuery.of(context).size.width / 1.2) +
//        24.0;

    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .35,
                  decoration: BoxDecoration(gradient: deepSeaBlue),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 25, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 1.5),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(40),
                                ),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/suzy_bae.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text(
                                    'Suzy Bae',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  IconButton(icon: FaIcon(FontAwesomeIcons.edit, color: Colors.white,size: 16,))
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                  child: Text('Seoul, Korea',style: TextStyle(color: Colors.white70, fontSize: 15),))
                            ],
                          )
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .35,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: SingleChildScrollView(
                    child: Container(
//                      constraints: BoxConstraints(
//                          minHeight: infoHeight,
//                          maxHeight: tempHeight > infoHeight
//                              ? tempHeight
//                              : infoHeight),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 50),
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  leading: FaIcon(FontAwesomeIcons.wallet, size: 20, color: Colors.grey,),
                                  title: Text('My Wallet', style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w600),),
                                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
                                ),
                                Divider(
                                  color: Colors.grey.withOpacity(0.15),
                                  thickness: 6,
                                ),
                                ListTile(
                                  leading: FaIcon(FontAwesomeIcons.book, size: 20, color: Colors.grey,),
                                  title: Text('Interest', style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w600),),
                                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
                                ),
                                ListTile(
                                  leading: FaIcon(FontAwesomeIcons.userCircle, size: 20, color: Colors.grey,),
                                  title: Text('Work Experience', style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w600),),
                                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
                                ),
                                ListTile(
                                  leading: FaIcon(FontAwesomeIcons.chessQueen, size: 20, color: Colors.grey,),
                                  title: Text('Skill Certificate', style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w600),),
                                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
                                ),
                                Divider(
                                  color: Colors.grey.withOpacity(0.15),
                                  thickness: 6,
                                ),
                                ListTile(
                                  leading: FaIcon(FontAwesomeIcons.bookOpen, size: 20, color: Colors.grey,),
                                  title: Text('Feedback', style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w600),),
                                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
                                ),
                                ListTile(
                                  leading: FaIcon(FontAwesomeIcons.questionCircle, size: 20, color: Colors.grey,),
                                  title: Text('Help Center', style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w600),),
                                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
                                ),
                                ListTile(
                                  leading: Icon(Icons.settings, size: 20, color: Colors.grey,),
                                  title: Text('Settings', style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w600),),
                                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .27,
              right: MediaQuery.of(context).size.width * .03,
              left: MediaQuery.of(context).size.width * .03,
              bottom: MediaQuery.of(context).size.height * .50,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                elevation: 10.0,
                child: Container(
                  height: MediaQuery.of(context).size.height * .20,
                  width: MediaQuery.of(context).size.width * .94,
                  child: Container(
                    padding: EdgeInsets.only(top: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          child: Column(
                            children: <Widget>[
                              FaIcon(FontAwesomeIcons.listAlt, color: seaBlue,size: 24),
                              Padding(
                                  padding: EdgeInsets.only(top:5),
                                  child: Text('Delivery',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)))
                            ],
                          ),
                        ),
                        FlatButton(
                          child: Column(
                            children: <Widget>[
                              FaIcon(FontAwesomeIcons.idCard, color: seaBlue,size: 24),
                              Padding(
                                  padding: EdgeInsets.only(top:5),
                                  child: Text('Contact',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)))
                            ],
                          ),
                        ),
                        FlatButton(
                          child: Column(
                            children: <Widget>[
                              FaIcon(FontAwesomeIcons.heart, color: seaBlue,size: 24),
                              Padding(
                                padding: EdgeInsets.only(top:5),
                                  child: Text('Collection',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
