import 'package:flutter/material.dart';

/*
    자식이 부모의 변수에 값을 사용하고 싶을 때
      1. 부모가 자식에게 보내기
      2. 자식은 부모가 보내준 변수 등록
      3. 자식이 사용
 */

void main() {
  runApp(
    MaterialApp(
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name = ['최은수','김용진','손은섭','임도영','임준영'];
  // 0. 자식에게 보내줄 변수 정의
  var num = 7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      floatingActionButton: FloatingActionButton(onPressed: (){
        print(context);
        showDialog(
            context: context,
            builder: (context){
              // 1. 부모가 자식에게 보내기
              return CustomDialog(stateVar: num, stateName: name);
            });
      }),
      body: ListView.builder(
          padding: EdgeInsets.all(5),
          itemCount: 5,
          itemBuilder: (context, index){
            return ListTile(
              leading: Image.asset('assets/image/${index+1}.PNG'),
              title: Text(name[index]),
            );
          }
      ),
      bottomNavigationBar: Bottom(),
    );
  }
}

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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

class CustomDialog extends StatelessWidget {
  // 2. 등록하기
  const CustomDialog({super.key, this.stateVar, this.stateName}); // 중괄호 -> 선택적 매개변수
  final dynamic stateName;
  final dynamic stateVar;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 500, height: 400,
        child: Column(
          children: [
            TextField(),
            TextButton(onPressed: (){}, child: Text('완료')),
            TextButton(onPressed: (){Navigator.pop(context);}, child: Text('취소')),
            // 3. 사용하기
            TextButton(onPressed: (){}, child: Text(stateName[1])),
            TextButton(onPressed: (){}, child: Text(stateVar.toString())),
          ],
        ),
      ),
    );
  }
}


