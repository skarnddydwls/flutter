// Pattern Matching: 자료형 매칭
void main() {
  final dydwls = ('용진', 27);
  final (name as String, age as int) = dydwls;
  // final (name as int, age as int) = dydwls; 자료형을 잘못 입력하면 오류가 남
  /*print(name);
  print(age);
  print(dydwls);

  switchar(['1','2']);
  switchar(['1','2','3']);
  switchar([1,2,3]);
  switchar([1,2,true]);
  switchar([1,2,3,4]);*/

  switchar(7);
  switchar(20);
}

void switchar(dynamic anything) {
  switch(anything){
    case 'abc':
      print('match: abc');
    case ['1','2']:
      print('match: [1,2]');
    case [_, _, _]: // 자료형과 관계없이 갯수만 맞으면 됨
      print('match: [_, _, _,]');
    case [int a, int b]:
      print('match: [int $a, int $b]');
    case < 10 && > 5:
      print('5위 10아래');
    default :
      print('no match');
  }
}