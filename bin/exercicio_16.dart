import 'dart:io';

List<int> lerVetor() {
  int t = int.parse(stdin.readLineSync()!);
  List<int> v = [];
  for (int i = 0; i < t; i++) v.add(int.parse(stdin.readLineSync()!));
  return v;
}

void main() {
  List<int> v1 = lerVetor();
  List<int> v2 = lerVetor();
  List<int> v3 = lerVetor();
  List<int> v4 = lerVetor();

  List<int> v5 = [...v1, ...v2, ...v3, ...v4];
  v5.sort();
  print(v5);

  Set<int> inter = v1.toSet()
      .intersection(v2.toSet())
      .intersection(v3.toSet())
      .intersection(v4.toSet());
  
  print(inter.toList());
}