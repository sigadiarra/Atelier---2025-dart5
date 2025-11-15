
import 'dart:io';

class NombreNegatifException implements Exception {
  String message;
  NombreNegatifException(this.message);
}

void test() {
  stdout.write("Entrez un nombre : ");
  String? saisie = stdin.readLineSync();

  try {
    int nombre = int.parse(saisie!);
    if (nombre < 0) {
      throw NombreNegatifException("Nombre négatif interdit !");
    } else {
      print("Le carré du nombre est ${nombre * nombre}");
    }
  } on NombreNegatifException catch (e) {
    print(e.message);
  } finally {
    print("Fin du programme");
  }
}
