import 'dart:io';

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw Exception('Le mot de passe doit contenir au moins 6 caractères.');
  }
}

void main() {
  stdout.write('Entrez votre mot de passe : ');
  String? motdepasse = stdin.readLineSync();

  try {
    verifierMotdepasse(motdepasse!);
    print('Mot de passe accepté');
  } catch (e) {
    print('Erreur : $e');
  }
}
