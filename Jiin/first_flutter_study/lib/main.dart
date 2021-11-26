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
        backgroundColor: Colors.black,
        body: SafeArea(
          //화면 안에 보이게 safeArea로 지정
          child: Center(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,    //column 내 container 자체를 세로축의 중앙에 배치
              // mainAxisSize: MainAxisSize
              //     .min, //column 내 container의 크기만큼 즉, 최소의 크기로 column widget 축소
              // verticalDirection: VerticalDirection.up,    //container를 column의 어디에 위치하게 할지 지정 가능
              // mainAxisAlignment:
              //     MainAxisAlignment.spaceEvenly, //container의 간격 같게 배치
              // mainAxisAlignment:
              //     MainAxisAlignment.spaceBetween, //스크린의 상,중.하에 container 배치
              // crossAxisAlignment: CrossAxisAlignment.end, //가로축 끝점을 기준으로 딱 맞게 배치
              crossAxisAlignment:
                  CrossAxisAlignment.stretch, //container의 너비 끝까지
              children: <Widget>[
                Container(
                  // width: 100,
                  height: 100,
                  color: Colors.white,
                  child: Text('Container 1'),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Container(
                  // width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Text('Container 2'),
                ),
                Container(
                  // width: 100,
                  height: 100,
                  color: Colors.red,
                  child: Text('Container 3'),
                ),
                // Container(
                //   width: double.infinity,   //오른쪽에 배치할 수 있게 invisible container의 가로를 무한으로 지정
                // )
              ],
            ),
          ),
        ));
  }
}
