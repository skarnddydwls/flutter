// named parameter: 변수 이름 명시로 매개변수 순서가 필요 없다.
void main(){
  addNumber(a: 20, b: 30, c: 60);
  addNumber(b: 20, c: 30, a: 600);
  addNumber2(b: 20, a: 600);
}

// 매개변수 넣는 곳에 {} 중괄호를 넣어주고, required를 붙인다.
void addNumber({required int a, required int b, required int c}){
  int sum = a+b+c;
  print(sum);
}

// required를 빼면 optional parameter임. => 값이 들어와도 되고, 안 들어와도 됨
void addNumber2({required int a, required int b, int c=2000}){
   int sum = a+b+c;
   print(sum);
}