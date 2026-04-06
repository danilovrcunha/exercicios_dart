import 'dart:io';

void main() {
  var labirinto = [
    ["-", "☻", "-", "-", "-", "-", "-"],
    ["|", " ", " ", "|", " ", " ", "|"],
    ["|", " ", " ", "|", " ", "-", "|"],
    ["|", "-", " ", " ", " ", " ", "|"],
    ["|", " ", "|", " ", "|", " ", "|"],
    ["|", " ", " ", " ", "|", "S", "|"],
    ["-", "-", "-", "-", "-", "-", "-"],
  ];

  print("Bem vindo ao labirinto");

  int playerX = 1;
  int playerY = 0;

  while (true) {
    exibirLabirinto(labirinto);

    print("Use W (cima), S (baixo), A (esquerda), D (direita):");
    String movimento = stdin.readLineSync()!.toUpperCase();

    int novoX = playerX;
    int novoY = playerY;

    if (movimento == 'W') novoY--;
    if (movimento == 'S') novoY++;
    if (movimento == 'A') novoX--;
    if (movimento == 'D') novoX++;

    if (!verificarCasa(labirinto, novoX, novoY)) {
      print("\nMovimento inválido!");
      continue;
    }

    if (labirinto[novoY][novoX] == "S") {
      print(" \n🎉 Parabéns, você ganhou!");
      break;
    }

    labirinto = moverPlayer(labirinto, playerX, playerY, novoX, novoY);

    playerX = novoX;
    playerY = novoY;
  }
}

void exibirLabirinto(List<List<String>> labirinto) {
  for (var linha in labirinto) {
    print(linha.join(" "));
  }
}

bool verificarCasa(List<List<String>> labirinto, int x, int y) {
  if (y < 0 || y >= labirinto.length || x < 0 || x >= labirinto[0].length) {
    return false;
  }

  if (labirinto[y][x] == "-" || labirinto[y][x] == "|") {
    return false;
  }

  return true;
}

List<List<String>> moverPlayer(
  List<List<String>> labirinto,
  int oldX,
  int oldY,
  int newX,
  int newY,
) {
  labirinto[oldY][oldX] = " ";
  labirinto[newY][newX] = "☻";

  return labirinto;
}
