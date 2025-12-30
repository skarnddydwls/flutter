import 'package:flutter/material.dart';

/*
    자식이 부모의 state 변경하기
      1. 부모가 수정 함수 만들기
      2. 자식에게 state 보내기
      3. 자식은 등록하고 사용
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
  // 1. state 만들기
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
              // 4. 자식에게 함수 보내기
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
  // 5. 등록하기
  const CustomDialog({super.key, this.friendState});
  final friendState;

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
            // 6. 사용하기
            TextButton(onPressed: (){
              friendState();
              Navigator.pop(context);
            }, child: Text('더하기')),
          ],
        ),
      ),
    );
  }
}


