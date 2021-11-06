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
      title: "First Flutter App", //app을 총칭하는 이름(앱 이름 그 자체)
      theme: ThemeData(primarySwatch: Colors.blue //파란색 색상 견본 사용
          ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //MyApp 안의 자식위젯
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jiin\'s first app'), //app 화면에 출력되는 title, appbar에 표시되는 것
      ),
      body: Center(
        //가운데 배치
        child: Column(
          children: <Widget>[
            Text("Hello"),
            Text("Hello"),
            Text("Hello"),
          ],
        ),
      ),
    );
  }
}
