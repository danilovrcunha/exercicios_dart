import 'dart:io';

void main() {
  String numero = stdin.readLineSync()!;
  String reverso = numero.split('').reversed.join();
  print(reverso);
}