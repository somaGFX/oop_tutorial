import 'package:oop_tutorial/enkapsulation/frau.dart';

void main() {
  final maria = Frau(vorname: 'Maria', nachname: 'Müler', geburtsdatum: DateTime(2002, 1, 1));
// maria.heiraten('Schmidt');
  maria.kinderAnzahl = 2;
  // print(maria.geburtsdatum);
  print(maria.kinderAnzahl);
  maria.heiraten('Schmidt');
  maria.geschieden();
  maria.heiraten('Frank');
}
