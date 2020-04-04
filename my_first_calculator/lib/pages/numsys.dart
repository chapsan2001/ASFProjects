import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var _controller = TextEditingController();
String result = "Result";
int decForm = 0;

class NumIn extends StatefulWidget {
  @override
  _NumInState createState() => _NumInState();
}

class _NumInState extends State<NumIn> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return TextField(
        autocorrect: false,
        controller: _controller,
        textAlign: TextAlign.center,
        textCapitalization: TextCapitalization.characters,
        cursorColor: Colors.amber[500],
        keyboardType: TextInputType.text,
        style: TextStyle(fontSize: 15),
        decoration: InputDecoration(
            labelText: 'Input',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)))),
        onSubmitted: (String val) {
          decForm = int.tryParse(val, radix: int.parse(_NumsysState._nsf));
        });
  }
}

class Numsys extends StatefulWidget {
  @override
  _NumsysState createState() => _NumsysState();
}

class _NumsysState extends State<Numsys> {
  static const menuItems = <String>[
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31',
    '32'
  ];
  final List<DropdownMenuItem> _dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();
  static String _nsf = '10';
  static String _nst = '2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber[500],
        title: Text('NumSys Converter'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.clear),
            tooltip: 'Clear',
            onPressed: () {
              _controller.clear();
              setState(() {
                result = "Result";
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('From', style: TextStyle(fontSize: 17.5)),
                  DropdownButton<String>(
                    value: _nsf,
                    onChanged: (String newValue) {
                      setState(() {
                        _nsf = newValue;
                        _controller.clear();
                      });
                    },
                    items: _dropDownMenuItems,
                    style: TextStyle(fontSize: 15.0, color: Colors.black))
                ],
              ),
              SizedBox(width: 10),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('To', style: TextStyle(fontSize: 17.5)),
                  DropdownButton<String>(
                    value: _nst,
                    onChanged: (String newValue) {
                      setState(() {
                        _nst = newValue;
                        _controller.clear();
                      });
                    },
                    items: _dropDownMenuItems,
                    style: TextStyle(fontSize: 15.0, color: Colors.black))
              ],
            ),
          ],
        ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.fromLTRB(85, 0, 85, 0),
            child: NumIn(),
          ),
          Text(result, style: TextStyle(fontSize: 30.0)),
          FlatButton(
            color: Colors.grey[350],
            textColor: Colors.black,
            padding: EdgeInsets.all(3.0),
            child: Text("Convert", style: TextStyle(fontSize: 25.0)),
            onPressed: () {
              setState(() {
                if (decForm == null) {
                  result = "ERROR!";
                } else {
                  result = decForm.toRadixString(int.parse(_NumsysState._nst)).toUpperCase();
                }
              });
            },
          ),
      ])),
    );
  }
}
