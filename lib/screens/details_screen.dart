
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class DetailsScreen extends StatefulWidget {
  static const routeName = '/home_screen';

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final double infoHeight = 364.0;
  String description = 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final double tempHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).size.width / 1.2) +
        24.0;
    return GestureDetector(
        onTap: () {
      FocusScopeNode currentFocus = FocusScope.of(context);

      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
    },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('Details', textAlign: TextAlign.center, style: TextStyle(color: Colors.black),),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .95,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    child: Card(
                      elevation: 0.5,
                      child: Container(
                        padding: EdgeInsets.only(left: 10) ,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(top: 10,)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('High-paying architects', style: TextStyle(fontSize: 18), textAlign: TextAlign.start,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text('25-30\$', style: TextStyle(fontSize: 18,color: seaBlue),),
                                    Text("/hr", style: TextStyle(fontSize: 14, color: Colors.grey),),
                                    Padding(padding: EdgeInsets.only(right: 10)),
                                  ],
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(top: 10)),
                            Text('Design Expert | Illustrator', style: TextStyle(fontSize: 14, color: Colors.grey),),
                            Padding(padding: EdgeInsets.only(top: 15)),
                          ],
                        ),
                      ),
                    ),
                    onTap: (){},
                  ),
                  Container(
                    child: GestureDetector(
                      child: Card(
                        elevation: 0.5,
                        child: ListTile(
                          leading: Container(
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
                          title: Text('Suzy Bae'),
                          subtitle: Text('Project Manager', style: TextStyle(color: Colors.grey),),
                          trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey,),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24),
                  ),
                  Text(
                    'Description',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*.24,
                      child: Text(description, style: TextStyle(fontSize: 15, color: Colors.grey),textAlign: TextAlign.left, overflow: TextOverflow.ellipsis,maxLines: 9 ,softWrap: false,)),
                  Padding(
                    padding: EdgeInsets.only(top: 24),
                  ),
                  Text(
                    'Company',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12),
                  ),
                  Container(
                    child: GestureDetector(
                      child: Card(
                        elevation: 0.5,
                        child: ListTile(
                          leading: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: seaBlue
                                ),
                            child: Icon(Icons.location_city, color: Colors.white,),
                          ),
                          title: Text('Seoul University', style: TextStyle(fontWeight: FontWeight.w700),),
                          trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey,),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: deepSeaBlue
                    ),
                    child: FlatButton(
                        onPressed: () {},
                        child: Text('Send Resume', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20), textAlign: TextAlign.center,)
                    ),
                  )
                ],
              ),
            ),
          )
        )
      ),
    );
  }
}

