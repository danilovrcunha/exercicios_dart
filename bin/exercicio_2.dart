import 'dart:io';

double calcularFatorial(int n) {
  double f = 1;
  for (int i = 1; i <= n; i++) f *= i;
  return f;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  double s = 0;
  int sinal = 1;

  for (int i = 1; i <= n; i++) {
    double numerador = (2 * i + 1).toDouble();
    double denominadorFat = calcularFatorial(4 * i);
    double denominadorExt = (5 * i).toDouble();

    if (i >= 4) {
      sinal = (i % 2 == 0) ? -1 : 1;
    }

    s += sinal * (numerador / denominadorFat) / denominadorExt;
  }
  print(s);
}