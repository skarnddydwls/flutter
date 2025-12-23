/*
  1. var 타입: 처음 들어온 값이 type이 되고, type이 정해지면 바꿀 수 없다.
  2. dynamic 타입: 처음 들어온 값이 type이 되지만, 처음 타입과 다른 타입을 넣어도 된다.
 */

void main() {
  var name = 'hong';
  name = 'gil';
  // name = 5; 타입이 다른 데이터를 넣으려고 해서 오류 발생

  dynamic number = 5;
  print(number);

  number = '남궁용진';
  print(number); // dynamic은 타입이 다른 데이터를 넣을 수 있다.

  dynamic bool1 = true;
  print(bool1);

  bool1= false;
  print('bool1의 타입: ${bool1.runtimeType}');
  bool1= 'true';
  print('bool1의 타입: ${bool1.runtimeType}');
  bool1= 67;
  print('bool1의 타입: ${bool1.runtimeType}');
}