import 'package:flutter/material.dart';
import 'package:my_first_calculator/buttons/numbers.dart';
import 'package:my_first_calculator/buttons/functions.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber[500],
        title: Text('My First Calculator'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.clear),
            tooltip: 'Clear',
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.blur_on),
            tooltip: 'Number systems converter',
            onPressed: () {Navigator.pushNamed(context, '/numsys');},
          ),
          IconButton(
            icon: Icon(Icons.help_outline),
            tooltip: 'Help',
            onPressed: () {Navigator.pushNamed(context, '/help');},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Divider(thickness: 1.0),
          /*Row(
            children: <Widget>[],
          ),
          SizedBox(height: 7.5),
          Row(
            children: <Widget>[],
          ),
          SizedBox(height: 7.5),*/
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Sin(), Cos(), Tan(), Cot()
            ],
          ),
          SizedBox(height: 7.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Sec(), Csc(), Log(), Root()
            ],
          ),
          SizedBox(height: 7.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Pi(), Exp(), Pow(), Add()
            ],
          ),
          SizedBox(height: 7.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Seven(), Eight(), Nine(), Subtract()
            ],
          ),
          SizedBox(height: 7.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Four(), Five(), Six(), Multiply()
            ],
          ),
          SizedBox(height: 7.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              One(), Two(), Three(), Divide()
            ],
          ),
          SizedBox(height: 7.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Zero(), DoubleZero(), Dot(), Equals()
            ],
          ),
          SizedBox(height: 7.5),
        ],
      ),
    );
  }
}
