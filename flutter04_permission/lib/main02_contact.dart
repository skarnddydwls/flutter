import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_contacts/contact.dart';

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
  // 권한 얻어오기
  getPermission() async {
    var status = await Permission.contacts.request(); // 권한 상태 확인 후 변수에 넣음
    if(status.isGranted) {
      print('허락됨');
      List<Contact> contacts = await FlutterContacts.getContacts(withProperties: true);
      setState(() {
        name = contacts;
      });
    } else if(status.isDenied) {
      print('거절됨');
      Permission.contacts.request();
    } else if(status.isPermanentlyDenied) {
      print('영구 거절됨. 설정에서 직접 설정 가능');
      openAppSettings();
    }
  }

  @override
  void initState(){ // 화면이 열리자마자 실행
    super.initState();
    getPermission();
  }

  var name = [];

  addName() async {
    // input이 Contact 객체가 아니므로 Contact 객체를 생성해서 input을 넣고 Contact형인 name에 추가
    List<Contact> contacts = await FlutterContacts.getContacts(withProperties: true);
    setState(() {
      name = contacts;

      /*Contact newContact = Contact()..displayName = input;
      name.add(newContact);*/
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list),
        title: Text('전화번호부 ${name.length}명'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          Padding(padding: EdgeInsets.only(right: 10)),
          IconButton(onPressed: (){}, icon: Icon(Icons.share)),
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
      }, child: Text("추가"),),
      body: ListView.builder(
          padding: EdgeInsets.all(5),
          itemCount: name.length,
          itemBuilder: (context, index){
            return ListTile(
              leading: Image.asset('assets/image/${index+1}.PNG'),
              title: Text(name[index].displayName),
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
  var inputData2 = '';

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 500, height: 400,
        child: Column(
          children: [
            TextField(onChanged: (text){inputData2 = text;},),
            TextButton(onPressed: () async {
              var nc = Contact();
              nc.name.first = inputData2;
              await nc.insert();
              await nameState();
              Navigator.pop(context);
            }, child: Text('추가')),
            TextButton(onPressed: (){Navigator.pop(context);}, child: Text('취소')),
          ],
        ),
      ),
    );
  }
}
