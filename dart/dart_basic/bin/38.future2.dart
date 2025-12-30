// 함수에 반드시 매개변수 뒤에 async를 넣고, Future앞에는 await를 넣는다

/*void main() async {
  addNumber(200, 400);
  addNumber(300, 500);
}

void addNumber(int a, int b) async {
  print("계산 시작: $a + $b");

  await Future.delayed(Duration(seconds: 2), () {
    print('계산 완료: $a + $b = ${a+b}');
  });

  print('함수 완료');
}*/

// 전체를 순서대로 하고 싶을 때
void main() async {
  // await를 붙이면 오류나는 이유는 addNumber() 함수가 void라서
  // 수정: 일반 함수를 Future함수로 변환 => Future<void>
  await addNumber(200, 400);
  await addNumber(300, 500);
}

Future<void> addNumber(int a, int b) async {
  print("계산 시작: $a + $b");

  await Future.delayed(Duration(seconds: 2), () {
    print('계산 완료: $a + $b = ${a+b}');
  });

  print('함수 완료');
}

