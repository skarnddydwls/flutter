void main(){
  Map<String, String> students = {
    '2022152047': '남궁용진',
    '2022150050': '손은섭'
  };
  print(students);
  print(students['2022152047']);

  students.addAll({'20250004': '남궁용진'});
  print(students);


  students.remove('2022152047');
  print(students);
}