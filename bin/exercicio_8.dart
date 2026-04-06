import 'dart:io';

void main() {
  String menorM = '';
  int menorPontuacaoM = 5001;

  String codigoMaiorSI = '';
  int maiorPontuacaoSI = -1;

  int totalM = 0;
  int totalF = 0;

  while (true) {
    String codigo = stdin.readLineSync()!;
    if (codigo == '0000') break;

    String curso = stdin.readLineSync()!;
    String nome = stdin.readLineSync()!;
    String sexo = stdin.readLineSync()!;
    int pontuacao = int.parse(stdin.readLineSync()!);

    if (curso == 'CC' && pontuacao > 2500) {
      print('$codigo - $nome - $pontuacao');
    }

    if (sexo == 'M') {
      totalM++;
      if (pontuacao < menorPontuacaoM) {
        menorPontuacaoM = pontuacao;
        menorM = nome;
      }
      if (curso == 'SI' && pontuacao > maiorPontuacaoSI) {
        maiorPontuacaoSI = pontuacao;
        codigoMaiorSI = codigo;
      }
    } else if (sexo == 'F') {
      totalF++;
    }
  }

  print(menorM);
  print(codigoMaiorSI);
  
  int totalGeral = totalM + totalF;
  if (totalGeral > 0) {
    print((totalM / totalGeral) * 100);
    print((totalF / totalGeral) * 100);
  }
}