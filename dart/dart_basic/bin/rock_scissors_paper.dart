import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main(){
  const choices = ['가위','바위','보'];
  int num = Random().nextInt(3);
  bool isTrue = true;
  String computer;
  String? player;
  if(num == 0) computer = '가위';
  else if(num == 1) computer = '바위';
  else computer = '보';

  const winner = { // 키 : 값
    '가위':'보',
    '바위':'가위',
    '보':'바위'
  };
  stdout.write('가위, 바위, 보 중에 하나를 입력하세요 >> ');
  while(isTrue) {
    player = stdin.readLineSync(encoding: utf8);

    if (!choices.contains(player)) {
      stdout.write('잘못 입력했습니다. 다시 입력하세요 >> ');
    } else {
      isTrue = false;
    }
  }

  if(computer == player) print('비겼습니다');
  else if(winner[player] == computer) print('이겼습니다');
  else print('졌습니다');

  print('컴퓨터: $computer, 플레이어: $player');
}

