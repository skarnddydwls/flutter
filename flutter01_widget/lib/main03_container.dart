import 'package:flutter/material.dart';

/*

 */

void main() {
  runApp(const MyApp());
}

/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('앱 제목'), backgroundColor: Colors.amberAccent,),
          body: Container(
            width: 100,
            height: 100,
            color: Colors.amberAccent,
            // margin: EdgeInsets.all(20), // 전체 margin
            margin: EdgeInsets.fromLTRB(10,20,0,0),
            padding: EdgeInsets.all(20),
            child: Text('본문 박스에 글씨 넣기'),
          ),
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.eleven_mp_rounded),
                Icon(Icons.eleven_mp_rounded),
                Icon(Icons.eleven_mp_rounded),
              ],
            ),
          ),
        )
    );
  }
}
*/

/*
// center로 body를 가운데에 넣기
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('예제'),
          backgroundColor: Colors.amberAccent
        ),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.lightBlue),
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            margin: EdgeInsets.fromLTRB(10, 30, 30, 10),
            padding: EdgeInsets.all(10),
            child: Text('본문 박스에 글자'),
          ),
        ),
        bottomNavigationBar: BottomAppBar(),
      )
    );
  }
}
*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              title: Text('예제'),
              backgroundColor: Colors.amberAccent
          ),
          body: Align(
            alignment: Alignment.topCenter,
            child: Container(
              // width: 100,
              width: double.infinity, // 전체 폭 자리차지
              height: 100,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlue),
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              margin: EdgeInsets.fromLTRB(10, 30, 30, 10),
              padding: EdgeInsets.all(10),
              child: Text('본문 박스에 글자'),
            ),
          ),
          bottomNavigationBar: BottomAppBar(),
        )
    );
  }
}


