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
          title: Text('강남역'),
          actions: [
            Icon(Icons.eleven_mp),
            SizedBox(width: 50,),
            Icon(Icons.eleven_mp),
            SizedBox(width: 50,),
            Icon(Icons.eleven_mp),
            Padding(padding: EdgeInsets.only(right: 30),)
          ],
        ),
        body: Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: double.infinity,
            height: 500,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/1.webp', width: 150,),
                SizedBox(width: 50,),
                SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        Text('보신탕', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                        Text('강남 10분전', style: TextStyle(color: Colors.grey),),
                        Text('55,000원', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        SizedBox(
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.favorite),
                              Text('4')
                            ],
                          ),
                        )
                      ],
                    )
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}


