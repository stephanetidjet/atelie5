import 'dart:io';
void main() {
  stdout.write('Entrez un nombre : ');
  String? n1 = stdin.readLineSync();

  stdout.write('Entrez un deuxième nombre : ');
  String? n2 = stdin.readLineSync();

try {
  int a = int.parse(n1!);
int b = int.parse(n2!);

int resultat = a ~/ b;
print('Résultat : $resultat');
    } on FormatException {
        print('Erreur : vous devez entrer un nombre.');
    }finally {
  print('Fin du operation stephane');
}
}