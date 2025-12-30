class Idol {
  String name;
  int membersCount;

  Idol({required this.name, required this.membersCount});

  sayName(){
    print('저희는 $name 입니다');
  }

  sayMembersCount(){
    print('$name $membersCount명의 멤버로 구성되어 있습니다');
  }
}

class BoyGroup extends Idol {
  // 밑에 두 개 같은 거
  /*BoyGroup(String name, int memberCount)
    :super(name: name, membersCount: memberCount);*/

  BoyGroup({required super.name, required super.membersCount});
}

void main(){
  Idol apink = Idol(name: '에이핑크', membersCount: 6);
  apink.sayName(); apink.sayMembersCount();

  BoyGroup btob = BoyGroup(name: '비투비', membersCount: 600);
  btob.sayName(); btob.sayMembersCount();
}











