/*
void main() {
  calculate(20).listen((val){
    print('결과: $val');
  });
}

Stream<int> calculate(int num) async*{
  for(int i=0; i<10;i++){
    yield i * num;
  }
}*/

// 1초마다 리턴되게
/*
void main() {
  calculate(20).listen((val){
    print('결과: $val');
  });
}

Stream<int> calculate(int num) async*{
  for(int i=0; i<10;i++){
    yield i * num;

    await Future.delayed(Duration(seconds: 1)); // 이 함수는 async* 이여도 사용 가능
  }
}*/

// 동시에 2개씩 실행
/*
void main() {
  calculate(2).listen((val){
    print('결과: $val');
  });

  calculate(20).listen((val){
    print('결과: $val');
  });
}

Stream<int> calculate(int num) async*{
  for(int i=0; i<10;i++){
    yield i * num;

    await Future.delayed(Duration(seconds: 1));
  }
}*/

// 1개가 끝나고 두번째 거 실행되게
/*
void main() {
 play().listen((val) {
   print(val);
 });
}

Stream<int> play() async* {
  yield* calculate(2); // yield*: 해당되는 모든 값이 들어올 때까지 기다려라
  yield* calculate(3);
}

Stream<int> calculate(int num) async* {
  for (int i = 0; i < 10; i++) {
    yield i * num;

    await Future.delayed(Duration(milliseconds: 500));
  }
}*/

// 카운트하기 5, 4, 3, 2, 1
void main() async {
  print("시작");
  // for는 꼭 필요하지 않지만 Stream을 순서대로 받는 방법
  await for(int val in count()){
    print(val);
  }
  print("종료");
}

Stream<int> count() async* {
  for(int i=5;i>0;i--) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

Stream<int> calculate(int num) async* {
  for (int i = 0; i < 10; i++) {
    yield i * num;
    await Future.delayed(Duration(milliseconds: 500));
  }
}


