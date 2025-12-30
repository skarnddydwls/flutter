/*
  * typedef: 함수의 타입을 정의하기 위해 사용
    - 사용하는 이유
      1. 함수의 타입이 길어질 때 가독성 향상
      2. 같은 형태의 함수를 여러 곳에서 재사용하기 위해
      3. API나 콜백의 의도를 분명하게 표현

    - 사용법
      typedef 타입이름 = 반환타입 Function(매개변수들);
 */
/*
int add(int a, int b, int c) => a+b+c;
int subtract(int a, int b, int c) => a-b-c;

typedef Operation = int Function (int a, int b, int c);

void main(){
  Operation operation = add;
  print(operation(10,20,30));

  operation = subtract;
  print(operation(20,30,40));
}
*/

int add(int a, int b, int c) => a+b+c;
int subtract(int a, int b, int c) => a-b-c;
int multi(int a, int b, int c) => a*b*c;

typedef Operation = int Function (int a, int b, int c);

int calculate(int a, int b, int c, Operation operation) {
  return operation(a,b,c);
}

void main() {
  int result = calculate(10, 20, 30, multi);
  print(result);
}