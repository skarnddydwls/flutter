import 'dart:math';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


final firestore = FirebaseFirestore.instance;
class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  // 이렇게 안하면 왜 null이 들어가지?
  List<String> name=[];
  List<String> city=[];
  List<int> age=[];
  List<List<dynamic>> hobbies = [];

  @override
  void initState(){
    super.initState();
    setState(() {
      getData();
      deleteData();
    });
  }

  getData() async {
    var persons = await firestore.collection('person').orderBy('name').get();
    try {
      for(var doc in persons.docs){
        name.add(doc['name']);
        age.add(doc['age']);
        city.add(doc['city']);
        hobbies.add(doc['hobbies']);
      }
    } catch(e){
      print(e);
    }
  }

  // 삭제
  deleteData() async {
    await firestore.collection('product').doc('BF5rOi1oipRdpHw25Vex').delete();
    
    // 문서안에 필드만 삭제
    // await firestore.collection('product').doc('BF5rOi1oipRdpHw25Vex').update({'price':FieldValue.delete()});

  }

  @override
  Widget build(BuildContext context) {
    // if(persons) return Center(child: CircularProgressIndicator(),);

    return ListView.builder(itemCount: name.length, itemBuilder: (c, i){
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(style: TextStyle(fontSize: 20),name[i]),
                Text(age[i].toString()),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(city[i]),
                Text(hobbies[i].join(',')),
                SizedBox(height: 30,)
              ],
            ),
          ],
        );
      }
    );
  }
}
