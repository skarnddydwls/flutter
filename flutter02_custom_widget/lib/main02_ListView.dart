import 'package:flutter/material.dart';

/*
    ListView() 위젯
        : 같은 위젯이 반복적으로 들어갈 때(반복문을 써도 되지만 좋은 위젯이 있음)
      - 스크롤바 생김
      - 스크롤의 위치 감시 가능
      - 메모리 절약기능(ListView.builder 일때): 스크롤을 아래로 내리면 위쪽은 가려지는 부분은 메모리에서 삭제
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
        appBar: AppBar(),
        body: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Flexible(flex: 4, child: Image.asset('assets/image/1.PNG')),
                    Padding(padding: EdgeInsets.only(left: 100)),
                    Flexible(flex: 6, child: Text("남궁용진"))
                  ],
                ),
                Row(
                  children: [
                    Flexible(flex: 4, child: Image.asset('assets/image/2.PNG')),
                    Padding(padding: EdgeInsets.only(left: 100)),
                    Flexible(flex: 6, child: Text("남궁용진"))
                  ],
                ),
                Row(
                  children: [
                    Flexible(flex: 4, child: Image.asset('assets/image/3.PNG')),
                    Padding(padding: EdgeInsets.only(left: 100)),
                    Flexible(flex: 6, child: Text("남궁용진",))
                  ],
                ),
                Row(
                  children: [
                    Flexible(flex: 4, child: Image.asset('assets/image/4.PNG')),
                    Padding(padding: EdgeInsets.only(left: 100)),
                    Flexible(flex: 6, child: Text("남궁용진",))
                  ],
                ),
                Row(
                  children: [
                    Flexible(flex: 4, child: Image.asset('assets/image/5.PNG')),
                    Padding(padding: EdgeInsets.only(left: 100)),
                    Flexible(flex: 6, child: Text("남궁용진",))
                  ],
                ),
              ],
            ),
          ]
        )
      ),
    );
  }
}*/

// ListTitle: 아이콘, 제목, 부제목 등을 손쉽게 배치
/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            ListTile(
              leading: Image.asset('assets/image/1.PNG'),
              title:Text('남궁용진')
            ),
            ListTile(
                leading: Image.asset('assets/image/2.PNG'),
                title:Text('남궁용진')
            ),
            ListTile(
                leading: Image.asset('assets/image/3.PNG'),
                title:Text('남궁용진')
            ),
            ListTile(
                leading: Image.asset('assets/image/4.PNG'),
                title:Text('남궁용진')
            ),
            ListTile(
                leading: Image.asset('assets/image/5.PNG'),
                title:Text('남궁용진')
            ),
          ],
        ),
      )
    );
  }
}*/

// ListView.builder(): ListView를 반복해줌
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            itemCount: 5, // 반복횟수
            itemBuilder: (context, index) { // 콜백함수
              // return Text(index.toString()); // Text()는 문자만 가능, 숫자 -> 문자
              // return Text('반복횟수: $index');
              return ListTile(
                leading: Image.asset('assets/image/${index + 1}.PNG'),
                title: Text('친구 $index'),
              );
            }
        ),
      ),
    );
  }
}

/*
                               ListView                       ListView.builder

    생성 방식         앱 실행 시점에 모두 메모리에 생성         스크롤 시점에 필요한 위젯만 생성(지연 생성)
    사용 대상         리스트가 짧거나 고정된 경우               리스트가 길거나 동적으로 바뀔 때
    성능              항목이 많으면 성능 저하 가능             성능 매우 효율적
    필요한 매개변수    children: [...]                       itemCount, itemBuilder
    사용              리스트 항목이 10개 이하로 작을 때        리스트가 많거나 무한스크롤, 동적 데이터일 경우
 */






























