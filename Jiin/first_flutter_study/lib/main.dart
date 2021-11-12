import 'dart:html';

import 'package:flutter/material.dart'; //flutter framework에 있는 기능을 사용하기 위해 무조건 import 해야함

void main() => runApp(MyApp());
/* 
=>(fat arrow)는 다른 함수를 호출한다는 의미
runApp 함수는 위젯을 반드시 필요로 함
여기서 MyApp은 커스텀 위젯, 최상위 위젯이며  screen layout을 최초로 빌드함
*/

class MyApp extends StatelessWidget {
  //모든 위젯을 감싸고 있음, stateless widget
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //디버그 표시 띠 안 보이게 설정
      title: "First Flutter App", //app을 총칭하는 이름(앱 이름 그 자체)
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  //MyApp 안의 자식위젯
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[800],
        appBar: AppBar(
          title: Text('Jiin\'s first app'), //app 화면에 출력되는 title, appbar에 표시되는 것
          backgroundColor: Colors.amber[700],
          centerTitle: true,
          elevation: 0.0,
          leading: IconButton(
            //appbar 위에 action을 취하는 아이콘 생성, leading: 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치
            icon: Icon(Icons.menu), //햄버거 버튼!
            onPressed: () {
              //onPressed: 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때 일어나는 이벤트 정의
              print('Menu button is clicked');
            },
          ),
          actions: <Widget>[
            //actions: 복수의 아이콘 버튼 등을 오른쪽에 배치
            IconButton(
              icon: Icon(Icons.shopping_cart), //쇼핑카트 버튼!
              onPressed: () {
                print('Shopping cart button is clicked');
              },
            ),
            IconButton(
              //appbar 위에 action을 취하는 아이콘 생성
              icon: Icon(Icons.search), //검색 버튼!
              onPressed: () {
                print('Search button is clicked');
              },
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //시작점 정렬
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/unnamed.jpg'),
                  radius: 60.0, //이미지 크기 설정
                ),
              ),
              Divider(
                //구분선 추가
                height: 60.0, //divider의 위아래 공백의 합(여기서는 위아래 각각 30px)
                color: Colors.grey[850],
                thickness: 0.5,
                endIndent: 30.0, //구분선이 끝에서 몇 픽셀 떨어져있는지
              ),
              Text(
                'Name',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0, //글자 간격 조절
                ),
              ),
              SizedBox(
                //sized box를 이용해 두 텍스트 사이의 간격 조절
                height: 10.0,
              ),
              Text(
                "Jiin\'s App",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'JIIN POWER LEVEL',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0, //글자 간격 조절
                ),
              ),
              SizedBox(
                //sized box를 이용해 두 텍스트 사이의 간격 조절
                height: 10.0,
              ),
              Text(
                "10",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Row(
                //가로로 위젯 나열
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(width: 10.0), //아이콘과의 간격 조절
                  Text(
                    'using lightsaber',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  ),
                ],
              ),
              Row(
                //가로로 위젯 나열
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(width: 10.0),
                  Text(
                    'face hero tattoo',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  ),
                ],
              ),
              Row(
                //가로로 위젯 나열
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(width: 10.0),
                  Text(
                    'fire flames',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  ),
                ],
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/dec22.png'),
                  radius: 40.0,
                ),
              ),
            ],
          ),
        ));
  }
}
