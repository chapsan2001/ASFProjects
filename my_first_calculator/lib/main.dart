import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/about.dart';
import 'pages/help.dart';
import 'pages/numsys.dart';

double constW = 0.225;  //Width constant which is used to conveniently change buttons width
double constH = 0.08;   //Height constant, same about height
double constFS = 24;    //Font size constant, same about font size

void main() {
  runApp(MaterialApp(
    title: 'My First Calculator',
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/numsys': (context) => Numsys(),
      '/help': (context) => Help(),
      '/help/about': (context) => About(),
  }));
}
