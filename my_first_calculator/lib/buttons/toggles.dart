import 'package:flutter/material.dart';
import 'package:my_first_calculator/pages/home.dart';

class Arc extends StatefulWidget {
  @override
  _ArcState createState() => _ArcState();
}

class _ArcState extends State<Arc> {                    //This toggle is used to tell the program if you want to use reverse trigonometric functions or direct ones
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Switch(
        onChanged: (bool value) {setState(() {arcVal = value;});},
        value: arcVal,
        activeColor: Colors.amber[500],
        ),
        Text('arc', style: TextStyle(fontSize: 42))
      ],
    );
  }
}

class DegRad extends StatefulWidget {
  @override
  _DegRadState createState() => _DegRadState();
}

class _DegRadState extends State<DegRad> {              //This toggle is used to tell the program if you want to use degrees or radians in trigonometric functions
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text('Rad', style: TextStyle(fontSize: 42)),
        Switch(
          onChanged: (bool value) {setState(() {degVal = value;});},
          value: degVal,
          activeColor: Colors.amber[500],
        ),
        Text('Deg', style: TextStyle(fontSize: 42))
      ],
    );
  }
}
