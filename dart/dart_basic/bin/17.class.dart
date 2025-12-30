// class: 모든 클래스의 부모는 Object이다

class Idol{
  String name='블랙핑크';
  List<String> members = ['지수','제니','리사','로제'];

  sayHello(){
    print("안녕하세요. 블랙핑크입니다.");
  }

  introduce(){
    print("저희 멤버는 지수, 제니, 리사, 로제 입니다");
  }
}

void main(){
  Idol idol = Idol(); // new 키워드 안써도됨
  print(idol.name);
  print(idol.members);
  idol.sayHello();
  idol.introduce();
}