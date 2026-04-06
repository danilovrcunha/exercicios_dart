import 'dart:io';

void main() {
  double somaTurma = 0;
  int totalAlunos = 0;
  int totalAprovados = 0;

  String matMaiorM = '';
  double maiorMediaM = -1;

  String matMaiorF = '';
  double maiorMediaF = -1;

  double somaMediaF = 0;
  int totalF = 0;

  while (true) {
    String matricula = stdin.readLineSync()!;
    if (matricula == '00000') break;

    String nome = stdin.readLineSync()!;
    String sexo = stdin.readLineSync()!;
    double n1 = double.parse(stdin.readLineSync()!);
    double n2 = double.parse(stdin.readLineSync()!);
    double n3 = double.parse(stdin.readLineSync()!);
    int faltas = int.parse(stdin.readLineSync()!);

    double media = (n1 + n2 + n3) / 3;
    somaTurma += media;
    totalAlunos++;

    bool aprovado = media >= 7.0 && faltas <= 18;

    if (aprovado) {
      totalAprovados++;
      if (sexo == 'M' && media > maiorMediaM) {
        maiorMediaM = media;
        matMaiorM = matricula;
      } else if (sexo == 'F' && media > maiorMediaF) {
        maiorMediaF = media;
        matMaiorF = matricula;
      }
    }

    if (sexo == 'F') {
      somaMediaF += media;
      totalF++;
    }
  }

  if (totalAlunos > 0) {
    print(somaTurma / totalAlunos);
    print((totalAprovados / totalAlunos) * 100);
  }
  print(matMaiorM);
  print(matMaiorF);
  if (totalF > 0) print(somaMediaF / totalF);
}