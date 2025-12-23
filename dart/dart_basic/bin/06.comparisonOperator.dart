void main(){
  int num1 = 1;
  print(num1 is int);
  print(num1 is String);
  print(num1 is! int);

  String result = 10 < 30 ? '10이 더 작음' : '10이 더 큼';
  print(result);

  10 < 20 ? print('10이 더 작음') : print('10이 더 큼');
}