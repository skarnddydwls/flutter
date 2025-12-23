/*
  Null safety 타입: 2.XX 버전부터 도입
    - 기본 값 초기화없이 선언하는 변수는 null값에 대한 안정성을 보장하기 위해
      모든 변수 타입을 nullable과 non-nullable로 구분 해야한다.
        1. nullable type: null 허용하는 타입
          => 자료형 뒤에 ?를 붙여서 사용
        2. non-nullable type: null을 허용하지 않는 타입
          => 아무것도 붙이지 않으면 non-nullable
 */

void main() {
  String name = 'kim';
  print(name);

  // name = null;  오류: non-nullable 타입으로 되어 있기에, null을 넣을 수 없다.

  String? name2 = '남궁용진';
  print(name2);
  name2 = null;
  print(name2);

  int? num = 2;
  num = null;

  /*
   ! : nullable type으로 선언했을 때,
       변수 뒤에 !를 붙여서 null인 경우 오류를 발생하도록 만든다.
        => 변수명에 !를 붙이면, non-nullable 타입이라는 뜻
   */

  String? name3 = '용진';
  print(name3);
  print(name3!);

  name3 = null;
  // print(name3!); // nullable로 설정되어 있지만, !를 붙여서 null이면 오류가 발생함

  int? num1;
  int num2 = 3;
  // print(num1 + num2); // 오류 num1이 null값이라서 연산 불가 (타입이 달라서? nullable + non-nullable??)
  // print(num1! + num2); // 지금은 오류가 안 나지만 실행할 때 오류가 뜸

  // ?? : null일 때 대체값 사용, 변수의 값은 변하지 않음
  print(num1 ?? 5);
  print((num1 ?? 7) + num2); // 소괄호를 넣으면 가독성 향상
  print(num1);

  // if문을 null safety를 이용하여 ?. 으로 사용할 수 있음
  String? name4 = "john";
  if(name4 != null){
    print(name4.isNotEmpty);
  }
  print(name4?.isEmpty);
  print(name4?.isNotEmpty);

  name4 =null;
  print(name4?.isEmpty);
  print(name4?.isNotEmpty);
}
