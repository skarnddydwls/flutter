import 'package:flutter/material.dart';

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
  var name = ['남궁용진'];

  addName(input){
    setState(() {
      name.add(input);
    });
    print(name);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list),
        title: Text('전화번호부'),
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
              return CustomDialog(nameState: addName);
            });
      }),
      body: ListView.builder(
          padding: EdgeInsets.all(5),
          itemCount: name.length,
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
  CustomDialog({super.key, this.nameState});
  final nameState;
  var inputData = TextEditingController();
  var inputData2 = '';

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 500, height: 400,
        child: Column(
          children: [
            TextField(onChanged: (text){inputData2 = text;},),
            TextButton(onPressed: (){
              nameState(inputData2);
              Navigator.pop(context);
              }, child: Text('추가')),
            TextButton(onPressed: (){Navigator.pop(context);}, child: Text('취소')),
          ],
        ),
      ),
    );
  }
}
