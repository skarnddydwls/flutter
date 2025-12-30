/*
    getter / setter
      변수 처럼 사용 (Java에서는 함수로 만듦)
        - 단순히 값을 넣거나 가져올 때 사용
        - 함수를 사용하는 이유는 그 안에 어떤 로직을 구현할 때 사용
 */


class Idol {
  final String name;
  final List<String> members;

  const Idol(this.name, this.members);

  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello(){
    print('안녕하세요 $name 입니다.');
  }

  void introduce(){
    print('저희 멤버는 $members 입니다.');
  }

  // getter
  String get FirstMember {
    return members[0];
  }

  // setter, setter의 매개변수는 무조건 한 개만 받을 수 있다.
  set FirstMember(String name) {
    this.members[0] = name;
  }

  // final이 붙어서 변경 불가, 리스트는 가능
  /*set nameSet(String name){
    this.name = name;
  }*/
}

void main(){
  Idol idol1 = Idol('블랙핑크', ['리사','제니','지수','로제']);
  Idol idol2 = Idol.fromList([['정국','뷔','제이홉','랩몬스터'],'방탄소년단']);
  print(idol1.FirstMember);

  // ********************************************************

  // idol1.FirstMember('나나'); 오류
  idol1.FirstMember = '지수 언니'; // 변수처럼 넣어야 됨, 함수처럼 XX
  idol2.FirstMember = '나나';
}