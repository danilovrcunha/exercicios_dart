import 'dart:io';

void main() {
  double somaLiqM = 0;
  int contM = 0;
  double somaLiqF = 0;
  int contF = 0;

  while (true) {
    String codigo = stdin.readLineSync()!;
    if (codigo == '9999') break;

    String nome = stdin.readLineSync()!;
    String sexo = stdin.readLineSync()!;
    double horas = double.parse(stdin.readLineSync()!);

    double bruto = horas * 12.30;
    double liquido = bruto;

    if (sexo == 'M') {
      liquido -= bruto * 0.10;
      somaLiqM += liquido;
      contM++;
    } else if (sexo == 'F') {
      liquido -= bruto * 0.05;
      somaLiqF += liquido;
      contF++;
    }

    print('$codigo - $nome - $bruto - $liquido');
  }

  if (contM > 0) print(somaLiqM / contM);
  if (contF > 0) print(somaLiqF / contF);
}