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
  var name = ['최은수','김용진','손은섭','임도영','임준영'];
  List<int> like = [0,0,0,0,0];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        body: ListView.separated(
            padding: EdgeInsets.all(5),
            itemCount: 5,
            itemBuilder: (context, index){
              return ListTile(
                leading: Image.asset('assets/image/${index+1}.PNG'),
                title: Text(name[index],),
                    trailing: ElevatedButton(onPressed: (){
                      setState(() {
                        like[index]++;
                      });
                    }, child: Text('좋아요'))
                );
            },
          separatorBuilder: (context, index) => SizedBox(height: 10,)
        ),
      ),
    );
  }
}
