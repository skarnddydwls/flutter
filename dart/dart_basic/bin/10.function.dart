// 함수 반환형을 쓰지 않으면 void를 생략한 것 ==> void가 default값
void main() {
  addNumbers(1, 2);
  addNumbers2(1,2,3); // 모두 더한 값이 홀/짝 인지 알려주는 함수
}

void addNumbers(int a, int b) {
  print(a + b);
}

void addNumbers2(int a, int b, int c){
  if((a+b+c).isEven) print('짝수');
  else print('홀수');
}