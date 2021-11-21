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
          // leading: IconButton(
          //   //appbar 위에 action을 취하는 아이콘 생성, leading: 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치
          //   icon: Icon(Icons.menu), //햄버거 버튼!
          //   onPressed: () {
          //     //onPressed: 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때 일어나는 이벤트 정의
          //     print('Menu button is clicked');
          //   },
          // ),
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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/dec22.png'),
                ),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/unnamed.jpg'),
                  ),
                ],
                accountName: Text('kji-dec'),
                accountEmail: Text('dec22sag@gmail.com'),
                onDetailsPressed: () {
                  print('arrow is clicked');
                }, //더보기창
                decoration: BoxDecoration(
                    color: Colors.red[200],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                    ) //곡선 효과
                    ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.grey[850]),
                title: Text('Home'),
                onTap: () {
                  print('Home is clicked');
                },
                trailing: Icon(Icons.add), //trailing: 오른쪽 끝에 추가
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.grey[850]),
                title: Text('Settings'),
                onTap: () {
                  print('Setting is clicked');
                },
                trailing: Icon(Icons.add), //trailing: 오른쪽 끝에 추가
              ),
              ListTile(
                leading: Icon(Icons.question_answer, color: Colors.grey[850]),
                title: Text('QnA'),
                onTap: () {
                  print('QnA is clicked');
                },
                trailing: Icon(Icons.add), //trailing: 오른쪽 끝에 추가
              ),
            ],
          ),
        ),
        body: Builder(builder: (BuildContext ctx) {
          return Center(
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
              child: Text(
                'Show me',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
                  content: Text('Hello'),
                ));
              },
            ),
          );
        }));
  }
}
