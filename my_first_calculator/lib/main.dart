import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/about.dart';
import 'pages/help.dart';
import 'pages/numsys.dart';

void main() => runApp(MaterialApp(
  title: 'My First Calculator',
  initialRoute: '/',
  routes: {
    '/': (context) => Home(),
    '/numsys': (context) => Numsys(),
    '/help': (context) => Help(),
    '/help/about': (context) => About(),
  }
));