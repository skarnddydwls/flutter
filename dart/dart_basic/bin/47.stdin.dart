// stdin: 콘솔에 입력 받기
//          - readLineSync()
// stdout: 콘솔에 출력 하기
import 'dart:convert';
import 'dart:io';

void main(){
  // print('이름을 입력하세요 >> ');
  stdout.write('이름을 입력하세요 >> ');
  String? name = stdin.readLineSync();
  print('입력한 이름: $name');

  stdout.write('학번을 입력하세요 >> ');
  String? sNumber = stdin.readLineSync();
  int number = int.parse(sNumber!);
  print('입력한 학번: $number');

  stdout.write('두 숫자 입력(공백으로 구분) >> ');
  String? sInput = stdin.readLineSync();

  List<String> value = sInput!.split(' ');
  int input1 = int.parse(value[0]);
  int input2 = int.parse(value[1]);
  print('$input1, $input2');
}