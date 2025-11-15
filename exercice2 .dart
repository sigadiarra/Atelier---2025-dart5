
import 'dart:io';

void age() {
  stdout.write("Entrez votre âge : ");
  String? saisie = stdin.readLineSync();

  try {
    int age = int.parse(saisie!);
    print("Votre âge est $age");
  } on FormatException {
    print("Format invalide");
  } finally {
    print("Fin d'opération");
  }
}
void main() {
  age();
}