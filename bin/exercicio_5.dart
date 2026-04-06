import 'dart:io';

void main() {
  String nomeFMaiorPeso = '';
  double maiorPesoF = -1;

  int total = 0;
  int totalBaixo = 0;
  int totalNormal = 0;
  int totalAlto = 0;

  while (true) {
    String? nome = stdin.readLineSync();
    if (nome == null || nome.isEmpty) break;

    String sexo = stdin.readLineSync()!;
    double peso = double.parse(stdin.readLineSync()!);

    String classificacao = '';
    if (peso >= 0 && peso <= 2) {
      classificacao = 'Baixo Peso';
      totalBaixo++;
    } else if (peso > 2 && peso <= 4) {
      classificacao = 'Normal';
      totalNormal++;
    } else if (peso > 4) {
      classificacao = 'Alto Peso';
      totalAlto++;
    }

    total++;
    print('$nome - $sexo - $classificacao');

    if (sexo == 'F' && peso > maiorPesoF) {
      maiorPesoF = peso;
      nomeFMaiorPeso = nome;
    }
  }

  print(nomeFMaiorPeso);
  if (total > 0) {
    print((totalBaixo / total) * 100);
    print((totalNormal / total) * 100);
    print((totalAlto / total) * 100);
  }
}