import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('주소록'),
          actions: [
            Icon(Icons.search),
            Icon(Icons.share)
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



























