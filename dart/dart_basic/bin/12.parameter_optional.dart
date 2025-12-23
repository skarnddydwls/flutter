// optional parameter: 있어도 되고 없어도 되는 파라미터. 대괄호로 묶는다.
void main() {
  addNumber(1,2);
  addNumber1(1,2);
}

// 방법 1
void addNumber(int a, [int? b, int? c]){ // null이 들어갈 수 있기에, nullable로 설정해줘야 됨
  b ??= 1;
  c ??= 1;
  int? sum = a+b+c;
  print(sum);
}

// 방법 2
void addNumber1(int a, [int b = 1, int c = 1]){ // 기본 값 설정
  int sum = a+b+c;
  print(sum);
}