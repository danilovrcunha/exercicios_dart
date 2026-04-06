import 'dart:io';
import 'dart:math';

double calcularFatorial(int n) {
  double f = 1;
  for (int i = 1; i <= n; i++) f *= i;
  return f;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  double x = double.parse(stdin.readLineSync()!);
  double s = 0;

  List<int> fatSeq = [1, 2, 3, 4, 3, 2];
  
  for (int i = 0; i < n; i++) {
    int expoente = i + 2;
    int fatBase = fatSeq[i % 6];
    s += pow(x, expoente) / calcularFatorial(fatBase);
  }
  print(s);
}