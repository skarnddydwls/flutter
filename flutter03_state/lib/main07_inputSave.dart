import 'package:flutter/material.dart';

/*
    input 데이터 사용
      ->
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
  var total = 5;

  dynamic addFriend(){
    setState(() {
      total++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list),
        title: Text(total.toString()),
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
              return CustomDialog(friendState: addFriend);
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
  // 1. const 지우기
  CustomDialog({super.key, this.friendState});
  final friendState;

  // 2. 변수 만들기
  var inputData = TextEditingController();

  var inputData2 = '';

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 500, height: 400,
        child: Column(
          children: [
            // 3. 변수에 저장 (controller: 변수명): 실시간 출력 안됨
            /*TextField(controller: inputData,),
            TextButton(onPressed: (){print(inputData.text);}, child: Text('콘솔에 입력값 출력')),*/
            // 4. onChanged를 사용해서 실시간 변수에 입력 값 넣기
            // TextField(onChanged: (text){ print(text); },),
            // 5. onChanged를 사용해서 실시간으로 변수에 저장하기
            TextField(onChanged: (text){inputData2 = text;},),
            TextButton(onPressed: (){friendState();}, child: Text('완료')),
            TextButton(onPressed: (){print(inputData2);}, child: Text('inputData2 출력')),
            TextButton(onPressed: (){Navigator.pop(context);}, child: Text('취소')),
          ],
        ),
      ),
    );
  }
}


