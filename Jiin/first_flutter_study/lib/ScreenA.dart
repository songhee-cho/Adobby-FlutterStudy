import 'dart:js';

import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScreenA"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              child: Text("ScreenB"),
              onPressed: () {
                Navigator.pushNamed(context, '/b');
              },
            ),
            TextButton(
              child: Text("ScreenC"),
              onPressed: () {
                Navigator.pushNamed(context, '/c');
              },
            ),
          ],
        ),
      ),
    );
  }
}
