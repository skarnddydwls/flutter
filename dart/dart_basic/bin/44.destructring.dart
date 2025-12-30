// Destructring(구조 분해): 어떤 구조이든 각각의 변수에 한 번에 대입

void main(){
  // tuple
  final (name,age) = ('민지', 23);
  print(name);
  print(age);
  print('==================================================');

  // List
  final newJeans = ['민지', '해인'];
  final [String name1, String name2] = newJeans;
  print(name);
  print(age);
  print('==================================================');

  // rest 연산자
  final numbers = [1,2,3,4,5,6,7,8,9];
  final [x,y, ...rest1, z] = numbers;
  print(x);
  print(y);
  print(z);
  print(rest1);
  print('==================================================');

  // _는 건너뛰기
  final [x2, _, y2, ...rest2, z2, _] = numbers;
  print(x2);
  print(y2);
  print(z2);
  print(rest2);
  print('==================================================');

  // Map
  final minJiMap = {'name':'민지', 'age':23};
  final {'name': name3, 'age':age3} = minJiMap;
  print(name3);
  print(age3);
  print('==================================================');

  final dydwls = Idol(name: '용진', age:27);
  final Idol(name: name4, age: age4) = dydwls;
  print(name4);
  print(age4);
}

class Idol {
  final String name;
  final int age;

  Idol ({
    required this.name,
    required this.age
  });
}