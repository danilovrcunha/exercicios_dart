import 'dart:io';


int receberInteiro(String mensagem) {
  print(mensagem);
  var entrada = stdin.readLineSync()!;
  try {
    return int.parse(entrada);
  } catch (e) {
    print("Entrada invalida! Tente novamente.\n");
    return receberInteiro(mensagem);
  }
}


List<int> lerVetor(int t, String nomeVetor) {
  List<int> v = [];

  for (int i = 0; i < t; i++) {
    int valor = receberInteiro("Digite o ${i + 1}º valor do $nomeVetor:");
    v.add(valor);
  }

  return v;
}

void processarVetores(List<int> v1, List<int> v2) {
  List<int> v3 = [];
  int soma = 0;

  for (int i = 0; i < v1.length; i++) {
    int val = v1[i] + v2[i];
    v3.add(val);
    soma += val;
  }

  print("\nVetor 1: $v1");
  print("Vetor 2: $v2");
  print("Vetor resultante (soma): $v3");
  print("Soma total: $soma");
}

void main() {
  int t = receberInteiro("Digite o tamanho dos vetores:");

  print("\n--- Vetor 1 ---");
  List<int> v1 = lerVetor(t, "vetor 1");

  print("\n--- Vetor 2 ---");
  List<int> v2 = lerVetor(t, "vetor 2");

  processarVetores(v1, v2);
}
