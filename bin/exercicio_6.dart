import 'dart:io';
import 'dart:math';

void main() {
  int alvo = Random().nextInt(100) + 1;
  int min = 1;
  int max = 100;

  while (true) {
    int palpite = int.parse(stdin.readLineSync()!);
    
    if (palpite == alvo) {
      print('Acertou!');
      break;
    } else {
      if (palpite < alvo && palpite >= min) {
        min = palpite;
      } else if (palpite > alvo && palpite <= max) {
        max = palpite;
      }
      print('O número está entre $min e $max');
    }
  }
}