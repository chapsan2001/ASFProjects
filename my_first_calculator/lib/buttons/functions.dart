import 'package:flutter/material.dart';
import 'dart:math';
import 'package:my_first_calculator/pages/home.dart';

String operation = "";         //This variable is used to tell the program what we're going to do with numbers

class Equals extends StatefulWidget {
  @override
  _EqualsState createState() => _EqualsState();
  final Function() notifyParent;
  Equals({Key key, @required this.notifyParent}) : super(key: key);
}

class _EqualsState extends State<Equals> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey[350],
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          '=',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        setState(() {
          if (expSecNum == true) {
            gotRes = true;
            afterDot = false;
            expSecNum = false;
            afterDotCount = 1;
            switch(operation){
              case "add": {res = res+number;}
              break;
              case "sub": {res = res-number;}
              break;
              case "div": {res = res/number;}
              break;
              case "mul": {res = res*number;}
              break;
              case "pow": {res = pow(res, number);}
              break;
              case "root": {res = pow(res, 1/number);}
              break;
              case "log": {res = log(res)/log(number);}
              break;
            }
            number = res;        //Result is displayed
          }
        });
        widget.notifyParent();
      },
    );
  }
}

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
  final Function() notifyParent;
  Add({Key key, @required this.notifyParent}) : super(key: key);
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey[350],
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          '+',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        if (expSecNum == false) {
          setState(() {
            gotRes = false;
            res = number;          //Temporary keeping
            number = 0;            //Ready for new input
            expSecNum = true;
            operation = "add";
            afterDot = false;
            afterDotCount = 1;
          });
          widget.notifyParent();
        }
      },
    );
  }
}

class Subtract extends StatefulWidget {
  @override
  _SubtractState createState() => _SubtractState();
  final Function() notifyParent;
  Subtract({Key key, @required this.notifyParent}) : super(key: key);
}

class _SubtractState extends State<Subtract> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey[350],
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          '-',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        if (expSecNum == false) {
          setState(() {
            gotRes = false;
            res = number;
            number = 0;
            expSecNum = true;
            operation = "sub";
            afterDot = false;
            afterDotCount = 1;
          });
          widget.notifyParent();
        }
      },
    );
  }
}

class Divide extends StatefulWidget {
  @override
  _DivideState createState() => _DivideState();
  final Function() notifyParent;
  Divide({Key key, @required this.notifyParent}) : super(key: key);
}

class _DivideState extends State<Divide> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey[350],
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          '/',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        if (expSecNum == false) {
          setState(() {
            gotRes = false;
            res = number;
            number = 0;
            expSecNum = true;
            operation = "div";
            afterDot = false;
            afterDotCount = 1;
          });
          widget.notifyParent();
        }
      },
    );
  }
}

class Multiply extends StatefulWidget {
  @override
  _MultiplyState createState() => _MultiplyState();
  final Function() notifyParent;
  Multiply({Key key, @required this.notifyParent}) : super(key: key);
}

class _MultiplyState extends State<Multiply> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey[350],
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          '×',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        if (expSecNum == false) {
          setState(() {
            gotRes = false;
            res = number;
            number = 0;
            expSecNum = true;
            operation = "mul";
            afterDot = false;
            afterDotCount = 1;
          });
          widget.notifyParent();
        }
      },
    );
  }
}

class Sin extends StatefulWidget {
  @override
  _SinState createState() => _SinState();
  final Function() notifyParent;
  Sin({Key key, @required this.notifyParent}) : super(key: key);
}

class _SinState extends State<Sin> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey[350],
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          'sin',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        setState(() {
          gotRes = true;
          afterDotCount = 1;
          afterDot = false;
          if (arcVal == true) {      //If we want an arcsin, we get an arcsin
            if (degVal = true) {number = asin(number)*(180/pi);} else {number = asin(number);}        //180/pi is how many degrees are in 1 radian
          } else {
            if (degVal == false) {number = sin(number); } else {number = sin(number*(pi/180));}       //If we want to use radians, we use radians
          }                                                                                           //pi/180 is how many radians are in 1 degree
          number = num.parse(number.toStringAsFixed(5));
          if (number == 0) {number = 0;}           //to avoid -0.0 output
        });
        widget.notifyParent();
      },
    );
  }
}

class Cos extends StatefulWidget {
  @override
  _CosState createState() => _CosState();
  final Function() notifyParent;
  Cos({Key key, @required this.notifyParent}) : super(key: key);
}

class _CosState extends State<Cos> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey[350],
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          'cos',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        setState(() {
          gotRes = true;
          afterDotCount = 1;
          afterDot = false;
          if (arcVal == true) {
            if (degVal = true) {number = acos(number)*(180/pi);} else {number = acos(number);}
          } else {
            if (degVal == false) {number = cos(number); } else {number = cos(number*(pi/180));}
          }
          number = num.parse(number.toStringAsFixed(5));
          if (number == 0) {number = 0;}
        });
        widget.notifyParent();
      },
    );
  }
}

class Tan extends StatefulWidget {
  @override
  _TanState createState() => _TanState();
  final Function() notifyParent;
  Tan({Key key, @required this.notifyParent}) : super(key: key);
}

class _TanState extends State<Tan> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey[350],
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          'tan',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        setState(() {
          gotRes = true;
          afterDotCount = 1;
          afterDot = false;
          if (number == pi/2 || number == 90 || number == 1.5*pi || number == 270) {number = 1/0;} else {     //Tangents of 90 and 270 degrees are infinite
            if (arcVal == true) {
              if (degVal = true) {number = atan(number)*(180/pi);} else {number = atan(number);}
            } else {
              if (degVal == false) {number = tan(number); } else {number = tan(number*(pi/180));}
            }
          }
          number = num.parse(number.toStringAsFixed(5));
          if (number == 0) {number = 0;}
        });
        widget.notifyParent();
      },
    );
  }
}

class Cot extends StatefulWidget {
  @override
  _CotState createState() => _CotState();
  final Function() notifyParent;
  Cot({Key key, @required this.notifyParent}) : super(key: key);
}

class _CotState extends State<Cot> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey[350],
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          'cot',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        setState(() {
          gotRes = true;
          afterDotCount = 1;
          afterDot = false;
          if (number == pi || number == 180 || number == 0 || number == 360) {number = 1/0;} else {     //Cotangents of 180 and 360 degrees are infinite
            if (arcVal == true) {
              if (degVal = true) {number = atan(1/number)*(180/pi);} else {number = atan(1/number);}    //Hereinafter basic trigonometric rules are used
            } else {
              if (degVal == false) {number = 1/tan(number); } else {number = 1/tan(number*(pi/180));}   //Thanks Google for them :)
            }
          }
          number = num.parse(number.toStringAsFixed(5));
          if (number == 0) {number = 0;}
        });
        widget.notifyParent();
      },
    );
  }
}

class Sec extends StatefulWidget {
  @override
  _SecState createState() => _SecState();
  final Function() notifyParent;
  Sec({Key key, @required this.notifyParent}) : super(key: key);
}

class _SecState extends State<Sec> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey[350],
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          'sec',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        setState(() {
          gotRes = true;
          afterDotCount = 1;
          afterDot = false;
          if (number == 0.5*pi || number == 90 || number == 1.5*pi || number == 270) {number = 1/0;} else {      //Secants of 90 and 270 degrees are infinite
            if (arcVal == true) {
              if (degVal = true) {number = acos(1/number)*(180/pi);} else {number = acos(1/number);}
            } else {
              if (degVal == false) {number = 1/cos(number); } else {number = 1/cos(number*(pi/180));}
            }
          }
          number = num.parse(number.toStringAsFixed(5));
          if (number == 0) {number = 0;}
        });
        widget.notifyParent();
      },
    );
  }
}

class Csc extends StatefulWidget {
  @override
  _CscState createState() => _CscState();
  final Function() notifyParent;
  Csc({Key key, @required this.notifyParent}) : super(key: key);
}

class _CscState extends State<Csc> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey[350],
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          'csc',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        setState(() {
          gotRes = true;
          afterDotCount = 1;
          afterDot = false; if (number == pi || number == 180 || number == 0 || number == 360) {number = 1/0;} else {  //Cosecants of 180 and 360 degrees are infinite
            if (arcVal == true) {
              if (degVal = true) {number = asin(1/number)*(180/pi);} else {number = asin(1/number);}
            } else {
              if (degVal == false) {number = 1/sin(number); } else {number = 1/sin(number*(pi/180));}
            }
          }
          number = num.parse(number.toStringAsFixed(5));
          if (number == 0) {number = 0;}
        });
        widget.notifyParent();
      },
    );
  }
}

class Pow extends StatefulWidget {
  @override
  _PowState createState() => _PowState();
  final Function() notifyParent;
  Pow({Key key, @required this.notifyParent}) : super(key: key);
}

class _PowState extends State<Pow> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey[350],
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          '^',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        if (expSecNum == false) {
          setState(() {
            gotRes = false;
            res = number;
            number = 0;
            expSecNum = true;
            operation = "pow";
            afterDot = false;
            afterDotCount = 1;
          });
          widget.notifyParent();
        }
      },
    );
  }
}

class Log extends StatefulWidget {
  @override
  _LogState createState() => _LogState();
  final Function() notifyParent;
  Log({Key key, @required this.notifyParent}) : super(key: key);
}

class _LogState extends State<Log> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey[350],
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          'Log',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        if (expSecNum == false) {
          setState(() {
            gotRes = false;
            res = number;
            number = 0;
            expSecNum = true;
            operation = "log";
            afterDot = false;
            afterDotCount = 1;
          });
          widget.notifyParent();
        }
      },
    );
  }
}

class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
  final Function() notifyParent;
  Root({Key key, @required this.notifyParent}) : super(key: key);
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey[350],
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          '√',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        if (expSecNum == false) {
          setState(() {
            gotRes = false;
            res = number;
            number = 0;
            expSecNum = true;
            operation = "root";
            afterDot = false;
            afterDotCount = 1;
          });
          widget.notifyParent();
        }
      },
    );
  }
}