/*
    비동기 처리
      - Futuer, Stream
      - 차이점:
           - Future: 한 번만 응답 받을 때 사용
           - Stream: 지속적으로 응답 받을 때 사용
      - 한 번만 응답 받을 때: async / await / Future
      - 지속적으로 응답 받을 때: async* / yield / Stream
      - 비동기 사용
          - 서버에서 데이터를 가져올 때
          - 파일 읽을 때
          - 계산이 오래 걸리는 작업일 때
    Future: javascript의 Promise와 동일
            싱글스레드 환경에서 비동기 처리를 위해 사용
             * javascript의 Promise는 특정 작업이 완료되면 다음 작업을 수행하겠다는 약속
             * Dart Future는 미래에 완료될 작업을 나타내는 객체(나중에 결과 받기)

 */

void main() {
  Future<String> name = Future.value('tjoeun');
  Future<int> num = Future.value(200);
  Future<bool> isTrue = Future.value(true);

  Future.delayed(Duration(seconds: 2), () {
    print("Delay End");

    addNumbers(10, 300);
    addNumbers(300, 400);
  });
}

void addNumbers(int a, int b){
  print('계산 시작: $a + $b');

  Future.delayed(Duration(seconds: 1), () {
    print(a+b);
  });
}