class TimesTwo {
  final int num;
  TimesTwo(this.num);

  int calculate() => num * 2;
}

class TimeFour extends TimesTwo {
  TimeFour(int num)
    : super(num);

  @override
  int calculate() {
    // 1. 부모의 num값 호출
    // return super.num * 4;
    // return this.num * 4;

    //2 부모의 메소드를 불러와서 사용
    return super.calculate() * 2;
  }
}

void main(){
  TimesTwo Ttwo = TimesTwo(3000);
  TimeFour Tfour = TimeFour(300000);
  print(Ttwo.calculate());
  print(Tfour.calculate());
}