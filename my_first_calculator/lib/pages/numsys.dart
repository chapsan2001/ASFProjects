import 'package:flutter/material.dart';

class NumIn extends StatefulWidget {
  @override
  _NumInState createState() => _NumInState();
}

class _NumInState extends State<NumIn> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      cursorColor: Colors.amber[500],
      keyboardType: TextInputType.number,
      style: Theme.of(context).textTheme.display1,
      decoration: InputDecoration(
        labelText: 'Enter an integer',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))
        )
      ),
//TODO:              onChanged: (){},
    );
  }
}


class Numsys extends StatefulWidget {
  @override
  _NumsysState createState() => _NumsysState();
}

class _NumsysState extends State<Numsys> {
  static const menuItems = <String>['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16'];
  final List<DropdownMenuItem> _dropDownMenuItems = menuItems.map(
    (String value) => DropdownMenuItem<String>(
      value: value,
      child: Text(value),
      ),
  ).toList();
  String _nsf = '10';
  String _nst = '2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber[500],
        title: Text('Number systems converter'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.clear),
            tooltip: 'Clear',
            onPressed: (){},
        ),],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('From'),
                    DropdownButton<String>(
                      value: _nsf,
                      onChanged: (String newValue) {   //TODO: mistake handling
                        setState(() {
                          _nsf = newValue;
                        });
                      },
                      items: _dropDownMenuItems
                    )
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('To'),
                    DropdownButton<String>(
                        value: _nst,
                        onChanged: (String newValue) {   //TODO: mistake handling
                          setState(() {
                            _nst = newValue;
                          });
                        },
                        items: _dropDownMenuItems
                    )
                  ],
                ),
              ],
            ),
            NumIn(),
          ]
        )
      ),
    );
  }
}
