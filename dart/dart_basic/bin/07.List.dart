/*
  * 집합 자료형: List, Set, Map
    - List type
      Java의 List와 동일
 */

void main(){
  List<String> name = ['홍길동', '제니', '남궁용진'];
  List<int> numbers = [1,2,3,4,5];
  print(name);
  print(numbers);

  print(name[2]);
  print(numbers[3]);

  name.add("나영");
  print(name);

  name.remove("나영");
  print(name);

  name.indexOf("제니");
}