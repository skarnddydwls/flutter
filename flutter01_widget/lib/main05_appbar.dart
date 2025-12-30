import 'package:flutter/material.dart';
// AppBar()

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
            backgroundColor: Colors.blue,
            leading: Icon(Icons.eleven_mp), // 왼쪽
            title: Text('MyApp'), //
            actions: [Icon(Icons.eleven_mp)], // 오른쪽
          ),
          body: Text('남궁용진'),
        )
    );
  }
}





