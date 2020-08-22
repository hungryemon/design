import 'package:design/screens/details_screen.dart';
import 'package:design/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeWidget extends StatefulWidget {
  static const routeName = '/home_screen';
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int _currentIndex = 0;
  String _labelSearch = 'Search';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              getSearchBarUI(),
              getPromoUI(),
              getCategoryUI(),
              getRecommendedUI()
            ],
          ),
        ),
      ),
    );
  }

  Widget getSearchBarUI() {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * .95,
            height: MediaQuery.of(context).size.height * .06,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.1),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: TextFormField(
              autocorrect: false,
              obscureText: false,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: _labelSearch,
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none,
              ),
              onChanged: (val) {
                setState(() {
                  if (val.isNotEmpty) {
                    _labelSearch = null;
                  } else {
                    _labelSearch = 'Search';
                  }
                });
              },
            ),
          )
        ],
      ),
    );
  }

  Widget getPromoUI() {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * .3,
        width: MediaQuery.of(context).size.width * .95,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/promo.jpg'), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * .26,
          width: MediaQuery.of(context).size.width * .5,
          padding: EdgeInsets.only(top: 25, left: 10, right: 10, bottom: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Private Custom',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                textAlign: TextAlign.left,
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(
                'Click More',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.left,
              ),
              Text(
                'for Details',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.left,
              ),
              Padding(padding: EdgeInsets.only(top: 25)),
              Container(
                height: 32,
                width: 85,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: FlatButton(
                    splashColor: seaBlue,
                    onPressed: () {},
                    child: Text('More')),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getCategoryUI() {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          Divider(
            thickness: 5,
            color: seaBlue,
            indent: 185,
            endIndent: 185,
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            height: MediaQuery.of(context).size.height * .1,
            width: MediaQuery.of(context).size.width * .95,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.0)),
                            color: Colors.red),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.fireAlt,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                      ),
                      Text('Hot'),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.0)),
                            color: Colors.lightBlue),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.crown,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                      ),
                      Text('Free'),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.0)),
                            color: Colors.amber),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.rocket,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                      ),
                      Text('Fast'),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.0)),
                            color: Colors.pink),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.gratipay,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                      ),
                      Text('Wishlist'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getRecommendedUI() {
    return Padding(
      padding: EdgeInsets.only(top: 18),
      child: Container(
        alignment: Alignment.topLeft,
        width: MediaQuery.of(context).size.width * .95,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Recommended',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            GestureDetector(
              child: Card(
                elevation: 0,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('High-paying architects', style: TextStyle(fontSize: 18), textAlign: TextAlign.start,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text('25-30\$', style: TextStyle(fontSize: 18,color: seaBlue),),
                              Text("/hr", style: TextStyle(fontSize: 14, color: Colors.grey),)
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text('Design Expert | Illustrator', style: TextStyle(fontSize: 14, color: Colors.grey),),
                      Padding(padding: EdgeInsets.only(top: 15)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                image: AssetImage('assets/images/suzy_bae.jpg'),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text('Suzy Bae'),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                    ],
                  ),
                ),
              ),
              onTap: (){
                Navigator.of(context).pushNamed(DetailsScreen.routeName);
              },
            ),
            Divider(
              thickness: 5,
              color: Colors.grey.withOpacity(.05),
            ),
            GestureDetector(
              child: Card(
                elevation: 0,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Director of Engineering', style: TextStyle(fontSize: 18), textAlign: TextAlign.start,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text('28-35\$', style: TextStyle(fontSize: 18,color: seaBlue),),
                              Text("/hr", style: TextStyle(fontSize: 14, color: Colors.grey),)
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text('Experienced | Professional | Researcher', style: TextStyle(fontSize: 14, color: Colors.grey),),
                      Padding(padding: EdgeInsets.only(top: 15)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/park_min_young.jpg'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text('Park Min Young'),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                    ],
                  ),
                ),
              ),
              onTap: (){
                Scaffold.of(context).showSnackBar(SnackBar(
                  duration: Duration(seconds: 5),
                  content: Text("Will be updated soon"),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
