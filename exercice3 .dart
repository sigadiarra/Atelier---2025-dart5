
void verifierMotdepasse(String mdp) {
  if (mdp.length < 6) {
    throw Exception("Mot de passe trop court");
  } else {
    print("Mot de passe accepté");
  }
}

void Exercice3() {
  try {
    verifierMotdepasse("lili8"); // test mot de passe trop court
  } catch (e) {
    print(e);
  }
}
