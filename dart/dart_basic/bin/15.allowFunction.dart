void main(){
  int result = addNumber(25, b: 48, c:75);
  print(result.isEven ? '짝수' : '홀수');

  result = addNumber(200, b: 300);
  print(result.isEven ? '짝수' : '홀수');

  result = addNumber(300, c:900, b: 61);
  print(result.isEven ? '짝수' : '홀수');
}

// 반환형 int
// (positional parameter, named parameter, optional parameter)
// 안의 print문은 짝수, 홀수

int addNumber1(int a, {required int b, int c = 200}){
  int sum = a+b+c;
  return sum;
}

int addNumber(int a, {required int b, int c = 20000}) => a+b+c;
