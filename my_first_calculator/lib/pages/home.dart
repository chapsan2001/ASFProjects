import 'package:flutter/material.dart';
import 'package:my_first_calculator/buttons/numbers.dart';
import 'package:my_first_calculator/buttons/functions.dart';
import 'package:my_first_calculator/buttons/toggles.dart';
import 'package:flutter/services.dart' ;

num number = 0;            //This variable is used for inputting and displaying
num res = 0;               //This variable is used for temporary keeping one of used numbers and, afterwards, a result
bool gotRes = false;       //This variable is used to know if you have got a result; if true, number buttons wipe first two variables before working as intended
bool expSecNum = false;    //This variable is used to know if second number for an operation is needed
bool afterDot = false;     //This variable is used to know if you want to input a decimal fraction
int afterDotCount = 1;     //This variable is used for typing decimal fractions properly
bool degVal = true;        //This variable is used to know if you want to use degrees or radians in trigonometric functions
bool arcVal = false;       //This variable is used to know if you want to use reverse trigonometric functions or direct ones.

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  refresh() {
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {        //This app isn't supposed to work in landscape mode
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber[500],
        title: Text('My First Calculator'),
        actions: <Widget>[
          IconButton(                       //This button wipes the calculator data
            icon: Icon(Icons.clear),
            tooltip: 'Clear',
            onPressed: (){
              setState(() {
                number = 0;
                expSecNum = false;
                afterDot = false;
                afterDotCount = 1;
                operation = "";
              });
            },
          ),
          IconButton(                                     //This button leads to number systems converter
            icon: Icon(Icons.blur_on),
            tooltip: 'Number systems converter',
            onPressed: () {
              Navigator.pushNamed(context, '/numsys');
            },
          ),
          IconButton(                                      //This button leads to help page
            icon: Icon(Icons.help_outline),
            tooltip: 'Help',
            onPressed: () {Navigator.pushNamed(context, '/help');},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text('$number', style: TextStyle(fontSize: 50)),          //Number display
          SizedBox(height: 200),
          Divider(thickness: 1.0),
          Row(                                                      //Button rows
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Arc(), SizedBox(width: 50), DegRad()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Sin(notifyParent: refresh), Cos(notifyParent: refresh), Tan(notifyParent: refresh), Cot(notifyParent: refresh)
            ],
          ),
          SizedBox(height: 7.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Sec(notifyParent: refresh), Csc(notifyParent: refresh), Log(notifyParent: refresh), Root(notifyParent: refresh)
            ],
          ),
          SizedBox(height: 7.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Pi(notifyParent: refresh), Exp(notifyParent: refresh), Pow(notifyParent: refresh), Add(notifyParent: refresh)
            ],
          ),
          SizedBox(height: 7.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Seven(notifyParent: refresh), Eight(notifyParent: refresh), Nine(notifyParent: refresh), Subtract(notifyParent: refresh)
            ],
          ),
          SizedBox(height: 7.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Four(notifyParent: refresh), Five(notifyParent: refresh), Six(notifyParent: refresh), Multiply(notifyParent: refresh)
            ],
          ),
          SizedBox(height: 7.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              One(notifyParent: refresh), Two(notifyParent: refresh), Three(notifyParent: refresh), Divide(notifyParent: refresh)
            ],
          ),
          SizedBox(height: 7.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Zero(notifyParent: refresh), DoubleZero(notifyParent: refresh), Dot(), Equals(notifyParent: refresh)
            ],
          ),
          SizedBox(height: 7.5),
        ],
      ),
    );
  }
}
