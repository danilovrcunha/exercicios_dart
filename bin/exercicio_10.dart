import 'dart:io';

void main() {
  int contF = 0;
  int contM = 0;

  int somaIdadeMExp = 0;
  int contMExp = 0;

  int contM45 = 0;
  int contF30Exp = 0;

  String nomeMenorIdadeExp = '';
  int menorIdadeExp = 999;

  while (true) {
    String nome = stdin.readLineSync()!;
    if (nome == 'FIM') break;

    String sexo = stdin.readLineSync()!;
    int idade = int.parse(stdin.readLineSync()!);
    String exp = stdin.readLineSync()!;

    if (sexo == 'F') {
      contF++;
      if (idade < 30 && exp == 'S') contF30Exp++;
    } else if (sexo == 'M') {
      contM++;
      if (idade > 45) contM45++;
      if (exp == 'S') {
        somaIdadeMExp += idade;
        contMExp++;
      }
    }

    if (exp == 'S' && idade < menorIdadeExp) {
      menorIdadeExp = idade;
      nomeMenorIdadeExp = nome;
    }
  }

  print(contF);
  print(contM);
  if (contMExp > 0) print(somaIdadeMExp / contMExp);
  if (contM > 0) print((contM45 / contM) * 100);
  print(contF30Exp);
  print(nomeMenorIdadeExp);
}