import 'package:flutter/material.dart';
import 'package:my_first_calculator/pages/home.dart';
import 'dart:math';

class One extends StatefulWidget {
  @override
  _OneState createState() => _OneState();
  final Function() notifyParent;
  One({Key key, @required this.notifyParent}) : super(key: key);
}

class _OneState extends State<One> {            //A number button
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey,
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
        '1',
        style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        if (gotRes == true) {               //If we have already got a result, but not going to use it, the program wipes it
          number = 0;
          res = 0;
          gotRes = false;
        }
        if (number.toString().length < 15) {        //The app works with up to 15 digit numbers in order not to overflow widgets
          setState(() {
            if (afterDot == false) {
              number = (number*10) + 1;         //If we are typing an integer, we add a zero after last digit by multiplying by 10 and replace it with button number
            } else {
              number = number + (1/pow(10,afterDotCount));
              afterDotCount++;                                    //If we are typing a decimal fraction, we are just adding a number after last digit
            }
          });
        }
        widget.notifyParent();
      },
    );
  }
}

class Two extends StatefulWidget {
  @override
  _TwoState createState() => _TwoState();
  final Function() notifyParent;
  Two({Key key, @required this.notifyParent}) : super(key: key);
}

class _TwoState extends State<Two> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey,
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          '2',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        if (gotRes == true) {
          number = 0;
          res = 0;
          gotRes = false;
        }
        if (number.toString().length < 15) {
          setState(() {
            if (afterDot == false) {
              number = (number*10) + 2;
            } else {
              number = number + (2/pow(10,afterDotCount));
              afterDotCount++;
            }
          });
        }
        widget.notifyParent();
      },
    );
  }
}

class Three extends StatefulWidget {
  @override
  _ThreeState createState() => _ThreeState();
  final Function() notifyParent;
  Three({Key key, @required this.notifyParent}) : super(key: key);
}

class _ThreeState extends State<Three> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey,
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          '3',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        if (gotRes == true) {
          number = 0;
          res = 0;
          gotRes = false;
        }
        if (number.toString().length < 15) {
          setState(() {
            if (afterDot == false) {
              number = (number*10) + 3;
            } else {
              number = number + (3/pow(10,afterDotCount));
              afterDotCount++;
            }
          });
        }
        widget.notifyParent();
      },
    );
  }
}

class Four extends StatefulWidget {
  @override
  _FourState createState() => _FourState();
  final Function() notifyParent;
  Four({Key key, @required this.notifyParent}) : super(key: key);
}

class _FourState extends State<Four> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey,
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          '4',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        if (number.toString().length < 15) {
          setState(() {
            if (gotRes == true) {
              number = 0;
              res = 0;
              gotRes = false;
            }
            if (afterDot == false) {
              number = (number*10) + 4;
            } else {
              number = number + (4/pow(10,afterDotCount));
              afterDotCount++;
            }
          });
        }
        widget.notifyParent();
      },
    );
  }
}

class Five extends StatefulWidget {
  @override
  _FiveState createState() => _FiveState();
  final Function() notifyParent;
  Five({Key key, @required this.notifyParent}) : super(key: key);
}

class _FiveState extends State<Five> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey,
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          '5',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        if (gotRes == true) {
          number = 0;
          res = 0;
          gotRes = false;
        }
        if (number.toString().length < 15) {
          setState(() {
            if (afterDot == false) {
              number = (number*10) + 5;
            } else {
              number = number + (5/pow(10,afterDotCount));
              afterDotCount++;
            }
          });
        }
        widget.notifyParent();
      },
    );
  }
}

class Six extends StatefulWidget {
  @override
  _SixState createState() => _SixState();
  final Function() notifyParent;
  Six({Key key, @required this.notifyParent}) : super(key: key);
}

class _SixState extends State<Six> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey,
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          '6',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        if (gotRes == true) {
          number = 0;
          res = 0;
          gotRes = false;
        }
        if (number.toString().length < 15) {
          setState(() {
            if (afterDot == false) {
              number = (number*10) + 6;
            } else {
              number = number + (6/pow(10,afterDotCount));
              afterDotCount++;
            }
          });
        }
        widget.notifyParent();
      },
    );
  }
}

class Seven extends StatefulWidget {
  @override
  _SevenState createState() => _SevenState();
  final Function() notifyParent;
  Seven({Key key, @required this.notifyParent}) : super(key: key);
}

class _SevenState extends State<Seven> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey,
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          '7',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        if (gotRes == true) {
          number = 0;
          res = 0;
          gotRes = false;
        }
        if (number.toString().length < 15) {
          setState(() {
            if (afterDot == false) {
              number = (number*10) + 7;
            } else {
              number = number + (7/pow(10,afterDotCount));
              afterDotCount++;
            }
          });
        }
        widget.notifyParent();
      },
    );
  }
}

class Eight extends StatefulWidget {
  @override
  _EightState createState() => _EightState();
  final Function() notifyParent;
  Eight({Key key, @required this.notifyParent}) : super(key: key);
}

class _EightState extends State<Eight> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey,
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          '8',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        if (gotRes == true) {
          number = 0;
          res = 0;
          gotRes = false;
        }
        if (number.toString().length < 15) {
          setState(() {
            if (afterDot == false) {
              number = (number*10) + 8;
            } else {
              number = number + (8/pow(10,afterDotCount));
              afterDotCount++;
            }
          });
        }
        widget.notifyParent();
      },
    );
  }
}

class Nine extends StatefulWidget {
  @override
  _NineState createState() => _NineState();
  final Function() notifyParent;
  Nine({Key key, @required this.notifyParent}) : super(key: key);
}

class _NineState extends State<Nine> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey,
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          '9',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        if (gotRes == true) {
          number = 0;
          res = 0;
          gotRes = false;
        }
        if (number.toString().length < 15) {
          setState(() {
            if (afterDot == false) {
              number = (number*10) + 9;
            } else {
              number = number + (9/pow(10,afterDotCount));
              afterDotCount++;
            }
          });
        }
        widget.notifyParent();
      },
    );
  }
}

class Zero extends StatefulWidget {
  @override
  _ZeroState createState() => _ZeroState();
  final Function() notifyParent;
  Zero({Key key, @required this.notifyParent}) : super(key: key);
}

class _ZeroState extends State<Zero> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey,
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          '0',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        if (gotRes == true) {
          number = 0;
          res = 0;
          gotRes = false;
        }
        if (number.toString().length < 15) {
          setState(() {
            if (afterDot == false) {
              number = number*10;
            } else {
              afterDotCount++;
            }
          });
        }
        widget.notifyParent();
      },
    );
  }
}

class DoubleZero extends StatefulWidget {
  @override
  _DoubleZeroState createState() => _DoubleZeroState();
  final Function() notifyParent;
  DoubleZero({Key key, @required this.notifyParent}) : super(key: key);
}

class _DoubleZeroState extends State<DoubleZero> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey,
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          '00',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        if (gotRes == true) {
          number = 0;
          res = 0;
          gotRes = false;
        }
        if (number.toString().length < 15) {
          setState(() {
            if (afterDot == false) {
              number = number*100;
            } else {
              afterDotCount += 2;
            }
          });
        }
        widget.notifyParent();
      },
    );
  }
}

class Pi extends StatefulWidget {
  @override
  _PiState createState() => _PiState();
  final Function() notifyParent;
  Pi({Key key, @required this.notifyParent}) : super(key: key);
}

class _PiState extends State<Pi> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey,
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          'π',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        if (gotRes == true) {
          number = 0;
          res = 0;
          gotRes = false;
        }
        setState(() {
          number = pi;                        //If pi or e is typed, everything on the display is replaced by them
          afterDot = true;
          afterDotCount = 17;
        });
        widget.notifyParent();
      },
    );
  }
}

class Exp extends StatefulWidget {
  @override
  _ExpState createState() => _ExpState();
  final Function() notifyParent;
  Exp({Key key, @required this.notifyParent}) : super(key: key);
}

class _ExpState extends State<Exp> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey,
      textColor: Colors.black,
      padding: EdgeInsets.all(3.0),
      child: Text(
          'e',
          style: TextStyle(fontSize: 42)
      ),
      onPressed: (){
        if (gotRes == true) {
          number = 0;
          res = 0;
          gotRes = false;
        }
        setState(() {
          number = e;
          afterDot = true;
          afterDotCount = 16;
        });
        widget.notifyParent();
      },
    );
  }
}

class Dot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey,
      textColor: Colors.black,
      padding: EdgeInsets.all(3),
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/dgs.dot.png'),
      ),
      onPressed: (){
        if (gotRes == true) {
          number = 0;
          res = 0;
          gotRes = false;
        }
        afterDot = true;
      },
    );
  }
}