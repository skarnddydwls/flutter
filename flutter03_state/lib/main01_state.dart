import 'package:flutter/material.dart';

/*
    state (변수)
      - 일반 변수와 다른 점: 변경이 되면 재 렌더링해줌
      - state를 쓰려면 Statefulwidget 안에서 사용
 */

void main() {
  runApp(MyApp());
}

/*class MyApp extends StatelessWidget {
  MyApp({super.key});
  // const로 만들어진 위젯의 모든 필드는 final이어야 됨
  // final num = 1;
  // 혹은 const를 제거하고, 일반 변수로 만들어야 됨
  var nul = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){
          print(num);
        }, child: Text('버튼'),),
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('주소록'),
          actions: [
            Icon(Icons.search),
            Padding(padding: EdgeInsets.only(right: 10)),
            Icon(Icons.share),
            Padding(padding: EdgeInsets.only(right: 20))
          ],
        ),
        body: ListView.builder(
            padding: EdgeInsets.all(5),
            itemCount: 5,
            itemBuilder: (context, index){
              return ListTile(
                leading: Image.asset('assets/image/${index+1}.PNG'),
                title: Text("남궁용진"),
              );
            }
        ),
        bottomNavigationBar: Bottom(),
      ),
    );
  }
}*/

// state 사용 => stful로 자동 생성하면 statfulWidget() 생성
// 재 렌더링이 필요한 값은 setState(){}안에 넣으면 됨
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              num++;
            });
          },
            child: Text(num.toString())
        ),
      ),
    );
  }
}


class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
          IconButton(onPressed: (){}, icon: Icon(Icons.message)),
          IconButton(onPressed: (){}, icon: Icon(Icons.contacts)),
        ],
      ),
    );
  }
}
