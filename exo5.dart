import 'dart:io';

class NombreNegatifException implements Exception {
  final String message;

  NombreNegatifException(this.message);

  @override
  String toString() => message;
}

void main() {
  stdout.write('Entrez un nombre : ');
  String? saisie = stdin.readLineSync();

  try {
    int nombre = int.parse(saisie!);

    if (nombre < 0) {
      throw NombreNegatifException('Erreur : le nombre ne doit pas être négatif.');
    }

    int carre = nombre * nombre;
    print('Le carré de $nombre est $carre');
  } on FormatException {
    print('Erreur : veuillez entrer un nombre entier.');
  } on NombreNegatifException catch (e) {
    print(e);
  } finally {
    print('Fin du programme');
  }
}
