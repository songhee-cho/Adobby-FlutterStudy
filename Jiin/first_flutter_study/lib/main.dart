import 'dart:html';

import 'package:first_flutter_study/screenA.dart';
import 'package:first_flutter_study/screenB.dart';
import 'package:first_flutter_study/screenC.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC(),
      },
    );
  }
}
