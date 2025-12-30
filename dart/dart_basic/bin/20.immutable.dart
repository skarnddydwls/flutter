/*
     immutable: 한 번 만들어진 객체(값)을 변경할 수 없단느 개념
                값을 바꿀 수 없기 때문에 항상 새로운 객체를 만들어서 교체
            - 왜 사용하는지
                - 상태 추적이 쉬움
                - 멀티스레드 환경에서 안전
                - 상태관리가 중요한 flutter에서는 매우 중요
        1. 인스턴스 변수를 상수로 만드는 방법
        2. 생성자를 상수로 만드는 방법
 */

// 방법 1. 인스턴스 변수를 상수로 변경
class Idol {
  final String name;
  final List<String> members;

  Idol(this.name, this.members);

  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello(){
    print('안녕하세요 $name 입니다.');
  }

  void introduce(){
    print('저희 멤버는 $members 입니다.');
  }
}

// 방법 2. 생성자를
class Idol2 {
  final String name;
  final List<String> members;

  const Idol2(this.name, this.members);

  Idol2.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello(){
    print('안녕하세요 $name 입니다.');
  }

  void introduce(){
    print('저희 멤버는 $members 입니다.');
  }
}

void main(){
  Idol idol1 = Idol('블랙핑크',['지수','리사','로제','제니']);
  // idol1.name = '트와이스';
  print(idol1.name);
  print(idol1.members);
  idol1.sayHello();
  idol1.introduce();

  Idol2 idol2 = const Idol2('블랙핑크',['지수','리사','로제','제니']);
  // idol1.name = '트와이스';
  print(idol2.name);
  print(idol2.members);
  idol2.sayHello();
  idol2.introduce();
}