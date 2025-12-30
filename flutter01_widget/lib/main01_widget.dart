import 'package:flutter/material.dart';

/*
    Widget
       - Meterial widget: 안드로이드
       - Cupertino widget: IOS
          => Flutter에서 안드로이드 폰을 만들어도 Cupertino widget 사용 가능. 서로 교차 사용 가능
       - 위젯을 사용하려면 반드시 2개 중 하나를 사용해야 그 안에 있는 디자인을 기반으로 위젯이 만들어짐
          (미리 만들어 놓은 위젯들을 가져다 사용함. 컴포넌트(or라이브러리)가 들어있다 생각하면 됨)
          위젯들이 정상 작동하려면 반드시 넣어야 됨

       - 기본적으로 많이 사용하는 widget
          1. Text(): 글씨 넣기 -> Text('글씨')
          2. Image(): 이미지 넣기 -> Image.asset('이미지명')
          3. Icon(): 아이콘 넣기 -> Icon('Icon.??)
          4. Container: 박스 넣기

 */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 첫 번째 화면 설정, 기본적으로 앱이 시작되면 이 화면이 가장 먼저 보임
      // home: Text('글씨'),
      // home: Icon(Icons.star_border),

      // home: Image.asset('assets/1.webp'), // 애뮬레이터에서 돌릴 때
      // home: Image.asset('1.webp'), // 크롬에서 돌릴 때

      // home: Container(color: Colors.lightBlueAccent,),
      // home: Center(child: Container(width: 20, height: 20, color: Colors.amber,)), // 기준이 없어서 width, height가 적용이 안됨
      home: Center(
        child: Container(
          child: Text('박스안에 글자넣기'),
          width: 450,
          height: 100,
          color: Colors.amberAccent,
        ),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body:Row(
            // 메인 축 정렬
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // 메인 반대 축
            // crossAxisAlignment: CrossAxisAlignment.center, // 안뵈는 이유는 icon의 높이만큼만 자리 차지하기 때문
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(Icons.eighteen_mp),
              Icon(Icons.eighteen_mp_outlined),
              Icon(Icons.eighteen_mp_rounded)
            ],
          )
      ),
    );
  }
}
