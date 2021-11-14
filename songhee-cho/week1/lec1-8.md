### Lec 1.

Google이 가지고 있는 OS: Android OS, Chrome OS

Fuchsia OS를 개발하고자 함

- Why flutter?
    - Fuchsia OS: Zircon이라는 마이크로 커널을 기반으로 하고 있음
- kernel이란?
    - 하드웨어와 소프트웨어를 연결해주는 역할
        - micro kernel: Fuchsia OS - Zircon
        - monolithic kernel: Android OS - Linux
- Why is Google making Fuchsia?
    - 1) Zircon은 임베디드 응용프로그램에서 일반적으로 사용되는 소영 시스템용으로 설계된 little kernel의 파생물
    - 2) Zircon은 현대적 전화기와 고속의 프로세서를 갖춘 개인용 컴퓨터를 타겟으로 하고 있다
        - → Fuchsia OS를 모든 기기에서 보편적으로 사용하겠다
    - 3) 음성명령에 중점을 두고 개발됨
        - Android: 터치 디스플레이에 최적화되어 있음
        - Fuchsia: 어떤 환경에서도 즉각저긍로 음성 명령을 수행할 수 있게 설계됨
    - 4) 안드로이드의 파편화
        - 구글 *트레블* 프로젝트
            - 하지만, IOS에 비하면 업데이트 속도가 느림
        - 현재 Android의 경우에서는, 업데이트 시 주도권을 스마트폰 제조사가 쥐게 됨
    
- What is the flutter?
    - flutter: framework
    - Fuchsia의 사용자 인터페이스와 애플리케이션을 만들기 위해 사용
    - 크로스 플랫폼(안드로이드, IOS) 애플리케이션 개발
    - 인터페이스나 사용자 경험을 하나로 통일
    - Hummingbird: Flutter의 웹 프로젝트
- Fuchsia and Flutter
    - Dart
    

### Lec 2.

- SDK
    - Software Development Kit
    - 소스코드의 모음과 유틸리티
    - 구글이 제공
    

### Lec 3.

- Android studio, 에뮬레이터 설치
    - Virtual device로 Android 환경에서의 앱 구현 확인을 위해 필요
- Visual Studio Code(ide) 설치

### Lec 4.

### Lec 5.

- Flutter 상에서의 위젯
- Stateless widgets vs Stateful widgets
- Widget tree
- Widget
    - UI를 만들고 구성하는 모든 기본 단위 요소
    - 눈에 보이지 않는 요소들까지 위젯
    - *statefull* vs *stateless*
        - stateful: value 값을 지속적으로 추적 및 보존
        - stateless: 이전 상호작용의 어떠한 값도 보존하지 않음
        - stateless widgets: 상대가 없는 정적인 위젯
            - 스크린상에 존재만 할 뿐 아무것도 하지 않음
            - 어떠한 실시간 데이터도 저장하지 않음
            - 어떤 변화(모양, 상태)를 유발시키는 value값을 가지지 않음
        - stateful widgets: 계속 움직임이나 변화가 있는 위젯
            - 사용자의 interaction에 따라서 모양이 바뀜
            - 데이터를 받게 되었을 때 모양이 바뀜
        - flutter widget tree
            - widget들은 tree 구조로 정리될 수 있음
            - 한 widget 내에 얼마든지 다른 widget들이 포함될 수 있음
            - widget은 부모 위젯과 자식 위젯으로 구성
            - parent widget을 widget container라고 부르기도 함

### Lec 6.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
```

### Lec 7.

- flutter 최상위 함수: runApp

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First app')
      ),
    );
  }
}
```

### Lec 8.

실습
