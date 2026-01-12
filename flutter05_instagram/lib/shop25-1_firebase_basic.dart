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
  @override
  void initState(){
    super.initState();
    getData();
    // setData();
  }

  /*getData() async {
    var result = await firestore.collection('product')
                                .doc('BF5rOi1oipRdpHw25Vex').get();

    // 컬렉션에 있는 모든 데이터 가져오기
    var result2 = await firestore.collection('product').get();

    // 서버가 안되거나 하는경우 대비
    if(result2.docs.isNotEmpty) {
      for(var doc in result2.docs){
        print('${doc['name']}');
        print('${doc['price']}');
      }
    }
  }*/

  /*getData() async {
    try {
      var result2 = await firestore.collection('product').get();

      if(result2.docs.isNotEmpty) {
        for(var doc in result2.docs){
          print('${doc['name']}');
          print('${doc['price']}');
        }
      }
    } catch(e){
      print('오류');
    }
  }*/

  getData() async{
    try {
      var result3 = await firestore.collection('product').where('price', isGreaterThan: 200).get();
      if(result3.docs.isNotEmpty){
        for(var pro1 in result3.docs){
          print(pro1['name']);
          print(pro1['price']);
        }
      }
    } catch (e){
      print('ㅇㄹ');
    }
  }

  // firebase에 저장
  setData() async {
    await firestore.collection('product').add({'name': '블라우스', 'price': 22000});


  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('shop page 하이'),
    );
  }
}
