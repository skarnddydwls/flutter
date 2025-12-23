// positional parameter: 순서를 지키는 매개변수
void main() {
  addNumbers1(10, 20, 30);
}

addNumbers1(int a, int b, int c){
  int sum = a+b+c;
  if(sum.isOdd) print('$a $b $c는 홀수');
  else if(sum.isEven) print('$a $b $c는 짝수');
}