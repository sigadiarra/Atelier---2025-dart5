
void calcul() {
  try {
    int resultat = 678 ~/ 0; 
    print(resultat);
  } catch (e) {
    print("Division impossible");
  }
}
void main() {
  calcul();
}