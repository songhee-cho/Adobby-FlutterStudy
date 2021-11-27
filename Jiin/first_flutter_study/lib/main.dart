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
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st"),
      ),
      body: Center(
        child: TextButton(
          child: Text("Go 2nd"),
          onPressed: () {
            Navigator.push(
                context2,
                MaterialPageRoute(
                    builder: (context) => SecondPage())); //1st 위에 2nd 쌓음
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2nd"),
      ),
      body: Center(
        child: TextButton(
          child: Text("Go 1st"),
          onPressed: () {
            Navigator.pop(ctx);
          },
        ),
      ),
    );
  }
}
