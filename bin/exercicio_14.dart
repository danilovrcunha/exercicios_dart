import 'dart:io';

void main() {
  int t1 = int.parse(stdin.readLineSync()!);
  List<int> v1 = [];
  for (int i = 0; i < t1; i++) v1.add(int.parse(stdin.readLineSync()!));

  int t2 = int.parse(stdin.readLineSync()!);
  List<int> v2 = [];
  for (int i = 0; i < t2; i++) v2.add(int.parse(stdin.readLineSync()!));

  List<int> v3 = [...v1, ...v2];
  v3.sort();
  print(v3);
}