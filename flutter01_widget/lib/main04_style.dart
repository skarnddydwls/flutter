import 'package:flutter/material.dart';
/*
      SizeBox(): 간단한 박스
          - 속성: width, height, child 3개만 있음
            => 많은 속성이 필요하면 Container 사용, 많이 필요 없으면 SizeBox()

      style(): 위젯에 대한 스타일 넣어주기
 */

void main() {
  runApp(const MyApp());
}

// SizeBox() 사용
// Text 위젯에 스타일 넣기
/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('예제'),
          backgroundColor: Colors.lightBlue,
        ),
        body: SizedBox(
          // Text() 위젯에 스타일 넣어주기
          child: Text('안녕',
            style: TextStyle(color: Colors.pink, fontSize: 200, fontWeight: FontWeight.w700),
          ),
        ),
      )
    );
  }
}*/

// 아이콘 스타일
/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('예제'),
            backgroundColor: Colors.lightBlue,
          ),
          body: SizedBox(
            child: Icon(
              Icons.add_circle_outline,
              color: Colors.purpleAccent,
              size: 200, // 기본사이즈: 24
            ),
          ),
        )
    );
  }
}*/

// 버튼 스타일
//    - TextButton(), IconButton(), ElevatedButton()
/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('예제'),
            backgroundColor: Colors.lightBlue,
          ),
          body: SizedBox(
            // child: TextButton(onPressed: (){}, child: Text('TextButton')),
            child: IconButton(onPressed: (){
              // 클릭 시 실행할 코드
            }, icon: Icon(
              Icons.eighteen_mp,
              color: Colors.purpleAccent,
              size: 200,
            )),
            // child: ElevatedButton(onPressed: (){}, child: Text('ElevateButton')),
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
          appBar: AppBar(title: Text('앱 제목'), backgroundColor: Colors.amberAccent,),
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xe4f9ebb5),
                borderRadius: BorderRadius.circular(15)
              ),
              child: IconButton(
                  onPressed: (){

                  }, icon: Icon(
                    Icons.favorite,
                    size: 70,
                    color: Colors.amberAccent,
                )
              ),
            ),
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
