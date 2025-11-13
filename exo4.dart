class MotdepasseCourtException implements Exception {
  final String message;

  MotdepasseCourtException(this.message);

  @override
  String toString() => message;
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException('Le mot de passe est trop court.');
  }
}

void main() {
  String motdepasse = '1234';

  try {
    verifierMotdepasse(motdepasse);
    print('Mot de passe accepté');
  } catch (e) {
    print('Erreur : $e');
  }
}
