
class MotdepasseCourtException implements Exception {
  String message;
  MotdepasseCourtException(this.message);
}

void verifierMotdepasse2(String mdp) {
  if (mdp.length < 6) {
    throw MotdepasseCourtException(" Le mot de passe trop court !");
  } else {
    print("Le mot de passe accepté");
  }
}

void motdepasse() {
  try {
    verifierMotdepasse2("abcrf"); 
  } on MotdepasseCourtException catch (e) {
    print(e.message);
  }
}
