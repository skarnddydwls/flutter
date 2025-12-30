import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name = ['최은수','남궁용진','손은섭','임도영','임준영'];
  var num = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            num++;
          });
        }, child: Text(num.toString()),),
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
                title: Text(name[index]),
              );
            }
        ),
      ),
    );
  }
}
