// 반환값
void main() async {
  final result = await addNumber(3, 3);
  print('결과: $result');
}

Future<int> addNumber(int a, int b) async {
  print("계산 시작: $a + $b");

  await Future.delayed(Duration(seconds: 2), () {
    print('계산 완료: $a + $b = ${a+b}');
  });

  print('함수 완료');

  return a+b;
}