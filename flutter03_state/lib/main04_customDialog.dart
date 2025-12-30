import 'package:flutter/material.dart';

/*
    Dialog

    context: 커스텀위젯을 만들 때마다 자동으로 하나가 만들어짐
      - 부모 위젯들의 정보를 담고 있는 변수
      - 그리고 그 부모에는 반드시 MaterialApp()이 들어 있어야 됨

      => context를 만드시 매개변수로 받아야 하는 위젯들
        - showDialog()
        - Navigator()
        - Theme.of()
        - Scaffold.of()
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
  List<int> like = [0,0,0,0,0];
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
              return CustomDialog();
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
  const CustomDialog({super.key});

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
          ],
        ),
      ),
    );
  }
}


