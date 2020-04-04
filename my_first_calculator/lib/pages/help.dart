import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.amber[500],
            title: Text('Help'),
            actions: <Widget>[
              IconButton(
                //This button leads to page about the app
                icon: Icon(Icons.live_help),
                tooltip: 'About',
                onPressed: () {
                  Navigator.pushNamed(context, '/help/about');
                },
              ),
            ]),
        body: ListView(
            padding: EdgeInsets.fromLTRB(25, 0, 20, 0),      //This is used for the text not to be hidden behind screen curves (e.g. Samsung Galaxy S10e)
            children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 5),
                    Text('This app is a calculator. What can it do?',
                        style: TextStyle(fontSize: 25)),
                    SizedBox(height: 5.0),
                    Text(
                        '1. Add numbers. Enter a number, press "+" button, enter another number, then press "=" button. You will get a sum of entered numbers.',
                        style: TextStyle(fontSize: 20)),
                    SizedBox(height: 5.0),
                    Text(
                        '2. Subtract numbers. Enter a number, press "-" button, enter another number, then press "=" button. You will get a difference of entered numbers.',
                        style: TextStyle(fontSize: 20)),
                    SizedBox(height: 5.0),
                    Text(
                        '3. Multiply numbers. Enter a number, press "×" button, enter another number, then press "=" button. You will get a composition of entered numbers.',
                        style: TextStyle(fontSize: 20)),
                    SizedBox(height: 5.0),
                    Text(
                        '4. Divide numbers. Enter a number, press "/" button, enter another number, then press "=" button. You will get a quotient of entered numbers.',
                        style: TextStyle(fontSize: 20)),
                    SizedBox(height: 5.0),
                    Text(
                        '5. Calculate logarithms. Enter a number, press "Log" button, enter a base, then press "=" button. You will get a logarithm of the first number at the base of the second one.',
                        style: TextStyle(fontSize: 20)),
                    SizedBox(height: 5.0),
                    Text(
                        '6. Exponentiate. Enter a base, press "^" button, enter an exponent, then press "=" button. You will get base in power of the exponent.',
                        style: TextStyle(fontSize: 20)),
                    SizedBox(height: 5.0),
                    Text(
                        '7. Calculate roots. Enter a number, press "√" button, enter an index, then press "=" button. You will get a root of the number.',
                        style: TextStyle(fontSize: 20)),
                    SizedBox(height: 5.0),
                    Text(
                        '8. Calculate trigonometric functions. Enter a number, choose between radians and degrees by tapping "Rad" or "Deg" switch, then press "sin", "cos", "tan", "cot", "sec" or "csc" button. You will get value of a corresponding function.',
                        style: TextStyle(fontSize: 20)),
                    SizedBox(height: 5.0),
                    Text(
                        '9. Calculate inverse trigonometric functions. Enter a number, toggle "arc" switch, then press "sin", "cos", "tan", "cot", "sec" or "csc" button. You will get value of a corresponding function.',
                        style: TextStyle(fontSize: 20)),
                    SizedBox(height: 5.0),
                    Text(
                        '10. Convert numbers between number systems from 2 to 32. Press "Number systems converter" button on the top of the screen, select number systems, enter a number, then tap "OK" button on the keyboard. You will get entered number in the different number system.',
                        style: TextStyle(fontSize: 20)),
                    SizedBox(height: 5.0),
                    Text(
                        'There is a lot of space above the function buttons. It means that probably new functions will be added later.',
                        style: TextStyle(fontSize: 20)),
                    Text('', style: TextStyle(fontSize: 20)),
                    Text(
                        'Attention! This calculator operates with up to 15-digit numbers.',
                        style: TextStyle(fontSize: 20)),
                    Text('', style: TextStyle(fontSize: 20)),
                    Text(
                        'To get information about the app, press a button on the top.',
                        style: TextStyle(fontSize: 20)),
                    SizedBox(height: 10),
                  ]),
            ]));
  }
}
