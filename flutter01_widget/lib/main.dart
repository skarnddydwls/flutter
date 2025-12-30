import 'package:flutter/material.dart';

/*
     Flexible() 위젯: flex와 비슷
        - 전체에서 ?%(퍼센트) 자리 차지 같은 거 사용할 때 편리
        - Row(), Column() 에서 사용

     Expanded(): 나머지 부분 다 자리차지

 */

void main() {
  runApp(const MyApp());
}

/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('강남역'),
            actions: [
              Icon(Icons.eleven_mp),
              SizedBox(width: 50,),
              Icon(Icons.eleven_mp),
              SizedBox(width: 50,),
              Icon(Icons.eleven_mp),
              Padding(padding: EdgeInsets.only(right: 30),)
            ],
          ),
          body: Row( // Column도 사용 가능
            children: [
              // Flexible(child: Container(color: Colors.blue), flex: 3,),
              // Flexible(child: Container(color: Colors.red), flex: 7,),
              
              Flexible(child: Container(color: Colors.lime), flex: 5,),
              Flexible(child: Container(color: Colors.red), flex: 5,),
              Flexible(child: Container(color: Colors.pink), flex: 5,),
            ],
          ),
        )
    );
  }
}*/

/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('강남역'),
            actions: [
              Icon(Icons.eleven_mp),
              SizedBox(width: 50,),
              Icon(Icons.eleven_mp),
              SizedBox(width: 50,),
              Icon(Icons.eleven_mp),
              Padding(padding: EdgeInsets.only(right: 30),) // 오른쪽
            ],
          ),
          body: Column(
            children: [
              Container(height: 100, color: Colors.amber),
              Expanded(child: Container(color: Colors.pink,))
            ],
          ),
        )
    );
  }
}*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('강남역'),
            actions: [
              Icon(Icons.eleven_mp),
              SizedBox(width: 50,),
              Icon(Icons.eleven_mp),
              SizedBox(width: 50,),
              Icon(Icons.eleven_mp),
              Padding(padding: EdgeInsets.only(right: 30),)
            ],
          ),
          body: Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(flex: 4,child: Image.asset('assets/1.webp', fit:BoxFit.cover)),
                  Flexible(
                      flex: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 15,
                        children: [
                          Text('보신탕', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                          Text('조리 10분전', style: TextStyle(color: Colors.grey),),
                          Text('55,000원', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.favorite),
                                Text('4')
                              ],
                          ),
                        ],
                      )
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}


