import 'package:flutter/material.dart';
import 'package:flutter/services.dart' ;

class SnackBarButton extends StatelessWidget {              //An easter egg :)
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.cake),
      tooltip: 'Cake',
      onPressed: () {Scaffold.of(context).showSnackBar(SnackBar(elevation: 0, content: Text('Cake is a lie!'), duration: Duration(milliseconds: 400),));},
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber[500],
        title: Text('About'),
        actions: <Widget>[SnackBarButton()],
      ),
      body: Column(children: <Widget>[
        SizedBox(height: 15.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('assets/dgs.logo.png'),
            Image.asset('assets/itmo.logo.png')
          ],
        ),
        SizedBox(height: 15.0),
        Divider(thickness: 1.0),
        Text('My First Calculator (v1.0)', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        SizedBox(height: 5.0),
        Container(padding: EdgeInsets.fromLTRB(25, 0, 20, 0), child: Text('This app was developed as a project for DotGov Solutions internship by ITMO University student Alexander Chapkey in 2020.', style: TextStyle(fontSize: 20))),
        SizedBox(height: 5.0),
        Container(padding: EdgeInsets.fromLTRB(25, 0, 20, 0), child: Text('It took me around a week to come up with the main idea of the app, around a week to learn Flutter basics, around two days to develop the interface and around three weeks to make all the functions work properly.', style: TextStyle(fontSize: 20))),
        SizedBox(height: 5.0),
        Container(padding: EdgeInsets.fromLTRB(25, 0, 20, 0), child: Text('While developing, I used my own Samsung Galaxy S10e for debugging, so I relied on it\'s screen resolution to build the interface.', style: TextStyle(fontSize: 20))),
        SizedBox(height: 5.0),
        Container(padding: EdgeInsets.fromLTRB(25, 0, 20, 0), child: Text('Done 9th February, 2020', style: TextStyle(fontSize: 20))),
        Divider(thickness: 1.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.alternate_email, size: 40),
            Text('chapsan2001@gmail.com', style: TextStyle(fontSize: 20))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.alternate_email, size: 40),
            Text('office@dotgovsolutions.net', style: TextStyle(fontSize: 20))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.link, size: 40),
            Text('vk.com/chapsan2001', style: TextStyle(fontSize: 20))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.link, size: 40),
            Text('dotgovsolutions.net', style: TextStyle(fontSize: 20))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.link, size: 40),
            Text('ifmo.ru', style: TextStyle(fontSize: 20))
          ],
        ),
      ],),
    );
  }
}