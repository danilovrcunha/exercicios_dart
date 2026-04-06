import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> vetor = [];
  Map<int, int> frequencia = {};

  for (int i = 0; i < n; i++) {
    vetor.add(int.parse(stdin.readLineSync()!));
  }

  for (int num in vetor) {
    frequencia[num] = (frequencia[num] ?? 0) + 1;
  }

  List<int> unicos = [];
  for (int num in vetor) {
    if (!unicos.contains(num)) {
      unicos.add(num);
      print('$num – ${frequencia[num]}');
    }
  }
}