import 'dart:io';

void main() {
  var tabuleiro = [
    [" ", " ", " "],
    [" ", " ", " "],
    [" ", " ", " "]
  ];

  String jogadorAtual = "X";

  while (true) {
    exibirTabuleiro(tabuleiro);
    int linha;
    while (true) {
      stdout.write("Jogador $jogadorAtual, escolha a linha (0-2): ");
      var inputLinha = stdin.readLineSync();
      if (inputLinha != null && int.tryParse(inputLinha) != null) {
        linha = int.parse(inputLinha);
        if (linha >= 0 && linha <= 2) break;
      }
      print("Entrada inválida! Tente novamente.");
    }

    int coluna;
    while (true) {
      stdout.write("Jogador $jogadorAtual, escolha a coluna (0-2): ");
      var inputColuna = stdin.readLineSync();
      if (inputColuna != null && int.tryParse(inputColuna) != null) {
        coluna = int.parse(inputColuna);
        if (coluna >= 0 && coluna <= 2) break;
      }
      print("Entrada inválida! Tente novamente.");
    }

    if (tabuleiro[linha][coluna] != " ") {
      print("Essa posição já está ocupada! Tente novamente.");
      continue;
    }

    tabuleiro[linha][coluna] = jogadorAtual;

    if (verificarGanhador(tabuleiro, jogadorAtual)) {
      exibirTabuleiro(tabuleiro);
      print("Jogador $jogadorAtual venceu!");
      break;
    }


    if (verificarEmpate(tabuleiro)) {
      exibirTabuleiro(tabuleiro);
      print("Empate!");
      break;
    }
    jogadorAtual = jogadorAtual == "X" ? "O" : "X";
  }
}

void exibirTabuleiro(List<List<String>> tabuleiro) {
  print("\n  0   1   2");
  for (int i = 0; i < tabuleiro.length; i++) {
    print("${i} ${tabuleiro[i].join(" | ")}");
    if (i < tabuleiro.length - 1) print("  ---------");
  }
  print("");
}

bool verificarGanhador(List<List<String>> tabuleiro, String jogador) {

  for (int i = 0; i < 3; i++) {
    if (tabuleiro[i][0] == jogador &&
        tabuleiro[i][1] == jogador &&
        tabuleiro[i][2] == jogador) return true;
  }

  for (int i = 0; i < 3; i++) {
    if (tabuleiro[0][i] == jogador &&
        tabuleiro[1][i] == jogador &&
        tabuleiro[2][i] == jogador) return true;
  }

  if (tabuleiro[0][0] == jogador &&
      tabuleiro[1][1] == jogador &&
      tabuleiro[2][2] == jogador) return true;

  if (tabuleiro[0][2] == jogador &&
      tabuleiro[1][1] == jogador &&
      tabuleiro[2][0] == jogador) return true;

  return false;
}

bool verificarEmpate(List<List<String>> tabuleiro) {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (tabuleiro[i][j] == " ") {
        return false;
      }
    }
  }
  return true;
}
