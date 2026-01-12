import 'dart:math';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/*
    where() 사용법
      사용법
        isEqualTo: value
        isGreaterThan: value
        isGreaterThanOrEqualTo: value
        isLessThan: value
        isLessThanOrEqualTo: value
        arrayContains: value(List 항목이어야 됨) -> 포함
        arrayCantainsAny: [...]                 -> 배열 중 하나라도 모함되어 있으면
        where('field', whereIn: [...])          -> 여러 값 중 하나
        where('field', whereNotIn: [...])       -> 여러 값 제외
 */

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
    updateData();
  }

  setData() async {
    var rand = Random();

    // 일괄 쓰기
    WriteBatch batch = firestore.batch();
    var names = [
      '강다은', '권기범', '김철수', '박지민', '백승우',
      '서동현', '송미소', '신유진', '안재현', '양다솜',
      '오지훈', '윤준호', '이영희', '임채원', '전태양',
      '정현우', '제갈민', '최수연', '한서윤', '홍하늘'
    ];

    var city = [
      '서울', '부산', '대구', '인천', '광주',
      '대전', '울산', '세종', '수원', '성남',
      '고양', '용인', '부천', '안산', '청주',
      '천안', '전주', '포항', '창원', '제주'
    ];

    var allhobby = [
      '축구', '독서', '요리', '등산', '수영',
      '영화 감상', '게임', '사진 촬영', '기타 연주', '여행'
    ];

    for(var i=0; i<20; i++){
      DocumentReference id = firestore.collection('person').doc('person${i+2}');

      // 취미는 2~4개
      int hobbyCount = rand.nextInt(3)+2; // 2~4
      var shuffled = List<String>.from(allhobby)..shuffle(); // 섞음
      var hobbies = shuffled.take(hobbyCount).toList();

      batch.set(id, {
        'name': names[i],
        'age': i+25,
        'city': city[i],
        'hobbies': hobbies
      });
    }
    await batch.commit();
  }

  getData() async {
    /*var persons = await firestore.collection('person').get();
    try {
      for(var doc in persons.docs){
        // print('${doc['name']}, ${doc['age']}, ${doc['city']}, ${doc['hobbies']}');
      }
    } catch(e){
      print('하이');
    }

    // 서울에 사는 사람만
    var queryByCity = await firestore.collection('person').where('city', isEqualTo: '안산').get();
    try {
      for(var doc in queryByCity.docs){
        print('${doc['name']}, ${doc['age']}, ${doc['city']}, ${doc['hobbies']}');
      }
    } catch(e){
      print('하이');
    }

    // 나이가 30세 이상인 사람
    var queryByAge = await firestore.collection('person').where('age', isGreaterThan: 30).get();
    try {
      for(var doc in queryByAge.docs){
        print('${doc['name']}, ${doc['age']}, ${doc['city']}, ${doc['hobbies']}');
      }
    } catch(e){
      print('하이');
    }

    // 나이가 30세 이상 35세 이하
    var queryByAge1 = await firestore.collection('person')
        .where('age', isGreaterThan: 29)
        .where('age', isLessThan: 36)
        .get();

    try {
      for(var doc in queryByAge1.docs){
        print('${doc['name']}, ${doc['age']}, ${doc['city']}, ${doc['hobbies']}');
      }
    } catch(e){
      print('하이');
    }

    // 취미에 게임이 포함되어 있는 데이터
    var habbies1 = await firestore.collection('person').where('hobbies', arrayContains: '게임').get();

    try {
      for(var doc in habbies1.docs){
        print('${doc['name']}, ${doc['age']}, ${doc['city']}, ${doc['hobbies']}');
      }
    } catch(e){
      print('하이');
    }

    // 취미에 기타 연주, 영화 감상이 하나라도 포함되어 있는 데이터
    var multiHobbies = await firestore.collection('person').where('hobbies', arrayContainsAny: ['영화 감상','기타 연주']).get();

    try {
      for(var doc in multiHobbies.docs){
        print('${doc['name']}, ${doc['age']}, ${doc['city']}, ${doc['hobbies']}');
      }
    } catch(e){
      print('하이');
    }

    // 여러 도시 조건
    var queryByCities = await firestore.collection('person')
                        .where('city', whereIn: ['서울', '안산', '부산']).get();
    try {
      print('====================================================================');
      for(var doc in queryByCities.docs){
        print('${doc['name']}, ${doc['age']}, ${doc['city']}, ${doc['hobbies']}');
      }
    } catch(e){
      print('하이');
    }

    // 여러 이름 조건
    var queryByNames = await firestore.collection('person')
                        .where('name', whereIn: ['오지훈', '윤준호', '이영희', '임채원']).get();
    try {
      print('====================================================================');
      for(var doc in queryByNames.docs){
        print('${doc['name']}, ${doc['age']}, ${doc['city']}, ${doc['hobbies']}');
      }
    } catch(e){
      print('하이');
    }

    // 이름 내림차순 정렬
    var nameDes = await firestore.collection('person').orderBy('name', descending: true).get();
    // 이름 오름차순
    var name = await firestore.collection('person').orderBy('name').get();
    try {
      print('====================================================================');
      for(var doc in name.docs){
        print('${doc['name']}');
      }
    } catch(e){
      print('하이');
    }*/

    // 나이가 30세 이상인 사람을 age순으로 가져오기
    // 나이가 30세 이상인 사람을 name순으로 가져오기

    var age11 = await firestore.collection('person').where('age', isGreaterThan: 29).orderBy('age').get();
    var name11 = await firestore.collection('person').where('age', isGreaterThan: 29).orderBy('name').get();

    try {
      for(var doc in age11.docs){
        print('${doc['name']}, ${doc['age']}');
      }
      print('----------------------------------------------');
      for(var doc in name11.docs){
        print('${doc['name']}, ${doc['age']}');
      }
    } catch(e){
      print('하이');
    }
  }

  /*
      set vs update
        - set: 같은 문서면 update하고, 문서가 없으면 생성
        - update: 반드시 문서가 있어야 한다. 없으면 오류 발생
   */
  updateData() async {
    // await firestore.collection('person').doc('person2').update({'hobbies':['축구','기타 연주']});
    
    // set으로 넣어주려면 나머지 항목들도 다 넣어줘야 된다. 그렇지 않으면 수정한 항목만 남고 나머지 사라짐
    // await firestore.collection('person').doc('person2').set({'hobbies':['축구','기타 연주','클라이밍']});


    await firestore.collection('person').doc('person2').set({
      'name': '남궁용진',
      'age': 20,
      'city': '안산',
      'hobbies':['축구','기타 연주','클라이밍']
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('shop page 하이'),
    );
  }
}
