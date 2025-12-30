import 'package:flutter/material.dart';

/*
      LayOut
        - Scaffold(): 화면을 top, body, bottom로 나누어줌
        - Row(): 위젯들을 가로로 배치
        - Column(): 위젯들을 세로로 배치
 */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('앱 제목'), backgroundColor: Colors.amberAccent,),
        body: Center(child: Text('본문 내용')),
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

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('앱 제목'), /*backgroundColor: Color(0xfff3edf7),*/), // top 부분
        body: Text('본문 내용'), // body 부분 -> 필수
        bottomNavigationBar: BottomAppBar(child: Text('하단 바')), // bottom 부분
      ),
    );
  }
}
