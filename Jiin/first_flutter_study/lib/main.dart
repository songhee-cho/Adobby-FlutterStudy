import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(primaryColor: Colors.blue),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          //화면 안에 보이게 safeArea로 지정
          child: Container(
            color: Colors.red,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
            padding: EdgeInsets.all(20),
            child: Text('Hello'),
          ),
        ));
  }
}
