// 클래스 앞에 붙는 keyword

// 1. final
//    extends, implement, mixin으로 사용 불가
/*
final class Person {
  final String name;
  final int age;

  Person({
   required this.name,
   required this.age
  });
}

class Student extends Person {
  Student({required super.name, required super.age});
}*/

// 2. base
//    extends는 가능하지만 같은 라이브러리 안에서만
//    implement, mixin 불가
/*base class Person2 {
  final String name;
  final int age;

  Person2({
    required this.name,
    required this.age
  });
}

base class Student extends Person2 {
  Student({required super.name, required super.age});
}*/

// 3. sealed
//    abstract이면서 final임.
//    패터매칭을 사용할 수 있음
/*sealed class Person3 {}
class Idol extends Person3 {}
class Chef extends Person3 {}
class dydwls extends Person3 {}

String whoIsHe(Person3 person) => switch(person) {
  Idol i => '아이돌',
  Chef c => '쉐프',
  _ => '나머지'
};*/

// 4. mixin
//    dart에서는 다중 상속 안됨
//    mixin에서는 with키워드로 다중 상속을 가능하게 한다.
//    생성자 없음
/*mixin class AnimalMixin1 {
  String bark() {
    return '멍멍';
  }
}

mixin class AnimalMixin2 {
  String bark() {
    return '월월';
  }
}

mixin class AnimalMixin3 {
  String bark() {
    return '왈왈';
  }
}

class Dog with AnimalMixin1, AnimalMixin2, AnimalMixin3 { }
class Cat extends AnimalMixin1 with AnimalMixin2, AnimalMixin3 { }*/

void main (){

}

/*
                                정리

     키워드             |    extends   |  implement  |   with  |   외부상속
     class             |      O       |     O       |     O   |     O
     final class       |      X       |     X       |     X   |     X
     base class        |      O       |     X       |     X   |     X
     interface class   |      X       |     O       |     X   |     O
     sealed class      |      O       |     X       |     X   |     X
     abstract class    |      O       |     O       |     O   |     O
     mixin class       |      O       |     O       |     O   |     O
 */


