import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


final firestore = FirebaseFirestore.instance;
final auth = FirebaseAuth.instance;

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List<String> name=[];
  List<String> city=[];
  List<int> age=[];
  List<List<dynamic>> hobbies = [];

  @override
  void initState(){
    super.initState();
    getData();
    authCreate();
    userInfo();
  }

  logout() async {
    await auth.signOut();
    print(auth.currentUser?.uid);
  }


  userInfo() async {
    try{
      var user = auth.currentUser;
      if(user == null){
        print('로그인 안됨');
        return;
      }

      var uid = user.uid;
      var name = user.displayName;
      var email = user.email;

      var doc = await firestore.collection('users').doc(uid).get();
      if(doc.exists){
        var data = doc.data() as Map<String, dynamic>;
        print('phone: ${data['phone']}');
        print('address: ${data['address']}');
        print('name: ${data['name']}');
      }

    } catch(e) {
      print(e);
    }

    logout();
  }

  login() async {
    try {
      await auth.signInWithEmailAndPassword(
          email: 'elelte991@gmail.com', password: '123456789a'
      );
    } catch(e) {
      print(e);
    }

    if(auth.currentUser?.uid == null) {
      print('로그인 실패');
    } else {
      print('로그인 성공');
    }
  }

  authCreate() async {
    /*try {
      var result = await auth.createUserWithEmailAndPassword(
          email: 'skarnddydwls@nate.com',
          password: '123456789a'
      );
    } catch (e) {
      print(e); // 이메일/비밀번호로 세팅해 놓음. 이메일 형식이 아니거나 비밀번호가 6자리 미만이면 오류
    }*/

    // 이름 추가
    /*try {
      var result = await auth.createUserWithEmailAndPassword(
          email: 'elelte991@gmail.com', password: '123456789a',
      );
      result.user?.updateDisplayName('남궁용진');
      await result.user?.reload();
      var user = auth.currentUser;
      print(user?.displayName);
    } catch(e) {
      print(e);
    }*/

    // 기타 다른 것들
    try {
      var result = await auth.createUserWithEmailAndPassword(
        email: 'elele991@gmail.com', password: '123456789a',
      );
      User? user = result.user;
      await user?.updateDisplayName('최용진');

      await firestore.collection('users').doc(user?.email).set({
        'name': '집가자',
        'address': '본오동',
        'phone': '010-9974-8286',
        'email': user?.email,
        'createAt': Timestamp.now(),
      });


    }catch(e){
      print(e);
    }
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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('ㅎ'),
    );
  }
}
