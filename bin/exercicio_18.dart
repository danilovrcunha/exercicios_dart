import 'dart:io';

void desenharForca(int erros) {
  List<String> forca = [
    " +---+",
    " |   |",
    "     |",
    "     |",
    "     |",
    "     |",
    "======="
  ];

  if (erros >= 1) forca[2] = " O   |";   
  if (erros >= 2) forca[3] = " |   |";   
  if (erros >= 3) forca[3] = "/|   |";   
  if (erros >= 4) forca[3] = "/|\\  |";  
  if (erros >= 5) forca[4] = "/    |";  
  if (erros >= 6) forca[4] = "/ \\  |";  

  for (var linha in forca) {
    print(linha);
  }
}

void main() {
  String palavra = "codigo";
  List<String> oculto = List.filled(palavra.length, "_");
  int erros = 0;
  int maxErros = 6;

  print("Jogo da Forca");

  while (erros < maxErros && oculto.contains("_")) {
    desenharForca(erros);
    print("\nPalavra: ${oculto.join(" ")}");

    print("Digite uma letra:");
    String letra = stdin.readLineSync()!.toUpperCase();

    if (letra.length != 1) {
      print("Digite apenas uma letra!");
      continue;
    }

    if (palavra.contains(letra)) {
      for (int i = 0; i < palavra.length; i++) {
        if (palavra[i] == letra) {
          oculto[i] = letra;
        }
      }
    } else {
      erros++;
      print("Errou! ($erros/$maxErros)");
    }
  }

  desenharForca(erros);

  if (oculto.contains("_")) {
    print("\nPerdeu! A palavra era $palavra");
  } else {
    print("\n🎉 Venceu! $palavra");
  }
}
