import 'dart:io';

class Boi {
  int numero;
  double peso;
  Boi(this.numero, this.peso);
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<Boi> bois = [];

  for (int i = 0; i < n; i++) {
    int numero = int.parse(stdin.readLineSync()!);
    double peso = double.parse(stdin.readLineSync()!);
    bois.add(Boi(numero, peso));
  }

  while (true) {
    String? inputMin = stdin.readLineSync();
    if (inputMin == null || inputMin.isEmpty) break;
    
    double pesoMin = double.parse(inputMin);
    double pesoMax = double.parse(stdin.readLineSync()!);

    for (var boi in bois) {
      if (boi.peso >= pesoMin && boi.peso <= pesoMax) {
        print('${boi.numero} - ${boi.peso}');
      }
    }
  }
}