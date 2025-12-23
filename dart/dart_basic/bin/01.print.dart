/*
  자료형
  1. bool(boolean이 아님) &&, || 다 됨
  2. int ** int / int = double (자동 형변환)
  3. double(float 없음)
  4. String: "", '' 모두 가능
  5. Null: null형만 넣을 수 있음

  ** print(같은 자료형만 넣을 수 있음)
*/

// 실행 단축기: shift + F10 => 맨 마지막 실행 내용을 다시 실행
//             ctrl + shift + F10 => 현재 열려있는 파일 실행
void main() {
  var name= 'kim';
  var num = 5;

  // 자료형 출력
  print(name.runtimeType);
  print(num.runtimeType);

  // 자료형이 다를 때는 따옴표를 반드시 넣어야 됨
  print(name + ' ${num}');
  print(name + ' ${name.runtimeType}');
  print(name + '집 가고 싶다.');
  print('${name} ${num}');

  // 권장하는 방법 (중괄호 없이 가능)
  print('$name $num');
  print('$name' + ' $num');

  // 반드시 중괄호를 해야할 상황
  print('${num.runtimeType}'); // <- 이러한 경우
  print('$num.runtimeType $num'); // 결과 5.runtimeType 5 
  
  // print(name + num); 자료형이 달라서 오류남
}