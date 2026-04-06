void main() {
  for (int i = 1000; i <= 9999; i++) {
    int p1 = i ~/ 100;
    int p2 = i % 100;
    int soma = p1 + p2;
    if (soma * soma == i) {
      print(i);
    }
  }
}