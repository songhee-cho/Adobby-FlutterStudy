// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   // const ({ Key? key }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'First app',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue
// //       ),
// //       home: MyHomePage(),
// //     );
// //   }
// // }

// // class MyHomePage extends StatelessWidget {
// //   // const ({ Key? key }) : super(key: key);
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('First app')
// //       ),
// //       body: Center(
// //         child: Column(
// //           children: <Widget>[
// //             Text('Hello'),
// //             Text('Hello'),
// //             Text('Hello')

// //         ],)
// //       )
// //     );
// //   }
// // } // 1st week

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'KERMIT',
//       home: Grade(),
//     );
//   }
// }

// class Grade extends StatelessWidget {
//   const Grade({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text('KERMIT'),
//         centerTitle: true,
//         backgroundColor: Colors.green[900],
//         elevation: 0.0,
//         leading:
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             CircleAvatar(
//               backgroundImage: AssetImage('assets/kermit-drink.gif'),
//               radius: 50.0,
//             ),
//             Divider(
//               height: 50.0,
//               color: Colors.grey[800],
//               thickness: 0.5,
//               endIndent: 30.0,
//               ),
//             Text('NAME',
//             style: TextStyle(
//               color: Colors.grey[800],
//               letterSpacing: 2.0,
//             ),
//             ),
//             SizedBox(
//               height: 10.0,
//             ),
//             Text('KERMIT',
//             style: TextStyle(
//               color: Colors.grey[900],
//               letterSpacing: 2.0,
//               fontSize: 20.0,
//               fontWeight: FontWeight.bold
//             ),
//             ),
//             SizedBox(
//               height: 15.0,
//             ),
//             Text('KERMIT POWER LEVEL',
//             style: TextStyle(
//               color: Colors.grey[800],
//               letterSpacing: 2.0,
//             ),
//             ),
//             SizedBox(
//               height: 10.0,
//             ),
//             Text('14',
//             style: TextStyle(
//               color: Colors.grey[900],
//               letterSpacing: 2.0,
//               fontSize: 20.0,
//               fontWeight: FontWeight.bold
//             ),
//             ),
//             SizedBox(
//               height: 15.0,
//             ),
//             Row(children: <Widget>[
//               Icon(Icons.check_circle_outline),
//               Text('using lightsaber',
//               style: TextStyle(
//               fontSize: 12.0,
//               letterSpacing: 1.0))
//             ]
//             ),

//             Row(children: <Widget>[
//               Icon(Icons.check_circle_outline),
//               Text('using lightsaber',
//               style: TextStyle(
//               fontSize: 12.0,
//               letterSpacing: 1.0))
//             ]
//             ),

//             Row(children: <Widget>[
//               Icon(Icons.check_circle_outline),
//               Text('using lightsaber',
//               style: TextStyle(
//               fontSize: 12.0,
//               letterSpacing: 1.0))
//             ]
//             ),

//             Center(
//               child: CircleAvatar(
//                 backgroundImage: AssetImage('assets/kermit-sitting-small.png'),
//                 radius: 50.0,
//                 backgroundColor: Colors.white,
//               ),
//             )            
//           ],
//         ),
//       ),
//     );
//   }
// } // ~ lec 13

// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Appbar',
//       theme: ThemeData(
//         primarySwatch: Colors.green
//       ),
//       home: const MyPage(),
//     );
//   }
// }


// class MyPage extends StatelessWidget {
//   const MyPage({Key? key}) : super(key: key);
//   @override

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Appbar icon menu'),
//         centerTitle: true,
//         elevation: 0.0,
        
//         // leading: IconButton(
//         //   icon: const Icon(Icons.menu), 
//         //   onPressed: () {  
//         //     // ignore: avoid_print
//         //     print('Menu button is clicked');
//         //   },
//         // ),
//         actions: <Widget>[
//           IconButton(
//           icon: const Icon(Icons.shopping_cart), 
//           onPressed: () {  
//             // ignore: avoid_print
//             print('Shopping cart button is clicked');
//           },
//           ),
//           IconButton(
//           icon: const Icon(Icons.search), 
//           onPressed: () {  
//             // ignore: avoid_print
//             print('Search button is clicked');
//           },
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             UserAccountsDrawerHeader(
//               currentAccountPicture: CircleAvatar(
//                 backgroundImage: AssetImage('assets/kermit-sitting-small.png'),
//                 backgroundColor: Colors.white,
//                 ), 
//               otherAccountsPictures: <Widget>[
//                 CircleAvatar(
//                   backgroundImage: AssetImage('assets/kermit-blanket.png'),
//                   backgroundColor: Colors.white,
//                 ),
//                 CircleAvatar(
//                   backgroundImage: AssetImage('assets/kermit-love.png'),
//                   backgroundColor: Colors.white,
//                 ),
//               ],
//                 accountName: Text('Kermit'),
//                 accountEmail: Text('kermit@kermit.com'),
//                 onDetailsPressed: (){
//                   print("Arrow is pressed.");
//                 },
//                 decoration: BoxDecoration(
//                   color: Colors.green[200],
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(40.0),
//                     bottomRight: Radius.circular(40.0)
//                   )
//                 ),
//             ),
//             ListTile(
//               leading: Icon(Icons.home,
//               color: Colors.grey[850],
//               ),
//               title: Text('Home'),
//               onTap: (){
//                 print('Home is clicked');
//               },
//               trailing: Icon(Icons.add),
//             ),
//             ListTile(
//               leading: Icon(Icons.settings,
//               color: Colors.grey[850],
//               ),
//               title: Text('Setting'),
//               onTap: (){
//                 print('Setting is clicked');
//               },
//               trailing: Icon(Icons.add),
//             ),
//             ListTile(
//               leading: Icon(Icons.question_answer,
//               color: Colors.grey[850],
//               ),
//               title: Text('Q&A'),
//               onTap: (){
//                 print('Q&A is clicked');
//               },
//               trailing: Icon(Icons.add),
//             )
//           ],
//         ),

//       ),
//     );
//   }
// } // ~lec 17

// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Appbar',
//       theme: ThemeData(
//         primarySwatch: Colors.green
//       ),
//       home: const MyPage(),
//     );
//   }
// }


// class MyPage extends StatelessWidget {
//   const MyPage({Key? key}) : super(key: key);
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Scaffold Messenger'),
//         centerTitle: true,
//         elevation: 0.0,
//               ),
//               body: HomeBody(),
//               floatingActionButton: FloatingActionButton(
//                 child: Icon(Icons.thumb_up),
//                 onPressed: () {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(
//                       content: Text('Like a new Snack bar!'),
//                       duration: Duration(seconds: 5),
//                       action: SnackBarAction(
//                         label: "Undo",
//                         onPressed: () {
//                           Navigator.push(
//                             context, 
//                             MaterialPageRoute(builder: (context) => ThirdPage()
//                             ),
//                             );
//                         },
//                     ),
//                   ),
//                   );
//                 },
//               ),
//     );
//   }
// }

// class HomeBody extends StatelessWidget {
//   const HomeBody({Key? key}) : super(key: key);

//   @override

//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         child: Text('Go to the second page'),
//         onPressed: () {
//           Navigator.push(
//             context, 
//             MaterialPageRoute(builder: (context) => SecondPage()),
//           );
//         },
//       ),
//     );
//   } 
// }

// class SecondPage extends StatelessWidget {
//   const SecondPage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     appBar: AppBar(
//       title: const Text('Second Page'),
//       ),
//       body: Center(
//         child: Text(
//           '"Like is added."',
//           style: TextStyle(
//             fontSize: 20.0,
//             color: Colors.greenAccent
//           ),
//         ),
//         ),
//       );
//       }
// }

// class ThirdPage extends StatelessWidget {
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     appBar: AppBar(
//       title: const Text('Third Page'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Do you want to cancle "like"?',
//               style: TextStyle(fontSize: 20.0, color: Colors.greenAccent)
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     content: Text('"Like is canceled'),
//                     duration: Duration(seconds: 3),
//                   ),
//                   );
//               },
//               child: Text('Cancel'),
//             )
//           ],
//           ),
//         ),
//         );

//       }
// } //~lec18

////////////////
// snack bar without builder widget
// toast message
////////////////
import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyPage());

class MyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,

      ),
      body: MySnackBar(),

    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Show me'),
        onPressed: () {
          Scaffold.of(context)
          .showSnackBar(SnackBar(
            content: Text('Hello',
            textAlign: TextAlign.center;
            style: TextStyle(
              color: Colors.white
            ),
            ),
            backgroundColor: Colors.teal,
            duration: Duration(milliseconds: 1000),
        }),
      );
  }
}