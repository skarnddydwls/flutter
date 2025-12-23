/*
  *  기존 프로그램과 동일

  *  다른점
    - 나눗셈: int / int = double
    - 몫: ~/

  * ??= : 만약 값이 null이면 오른쪽에 있는 값을 변수에 저장하고,
          null이 아니면 왼쪽값을 저장
 */

void main(){
  int num1 = 4;
  int num2 = 2;
  // int result = num1 / num2; // 오류: 결과는 무조건 double형

  var result = num1 / num2;
  print(result.runtimeType);
  print(result);

  int num3 = 3;
  print('몫: ${num1 ~/ num3}');

  int? num4 = 2;
  print(num4);

  num4 = null;
  print(num4);

  num4 ??= 5;
  print(num4);

  num3 ??= 10;
  print(num3);

  num4 ??= 20; // 위에서 num4 ??= 5를 선언해놨기에, 지금 num4는 null이 아니다.
  print(num4);
}

/*
  ?: 자료형에 붙여줌
  ??: 변수에 붙여줌. null일 때 기본 값 제공(원본 안 바뀜)
  ??=: 변수에 붙여줌. null일 때 기본 값 제공(원본 바뀜)
 */