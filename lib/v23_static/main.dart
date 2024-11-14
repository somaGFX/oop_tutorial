import 'package:oop_tutorial/v23_static/static_fahrzeg.dart';
import 'package:oop_tutorial/v23_static/static_rechner.dart';

void main() {
  final auto = AutoV23(); // FahrzeugV23.fahrzeugeAnzahl wird mit eins erhöht.
  final bus = BusV23();
  final lkw = LkwV23();
  final fahrzeugeAnzahl = FahrzeugV23.fahrzeugeAnzahl;
  print('FahrzeugeAnzahl: $fahrzeugeAnzahl');

  final List<FahrzeugV23> fahrzeuge = FahrzeugV23.fahrzeuge;
  print('Fahrzeug Liste: $fahrzeuge');
  print('Reifen Anzahl: ${FahrzeugV23.reifenZahl}');
  print('Klassenname: ${BusV23.classname}');
  print('Klassenname: ${AutoV23.classname}');
  // print('Reifen Anzahl: ${AutoV23.reifenZahl}');

  // AutoV23.fahren();
  BusV23.fahren();

  TaschenRechner.addieren(1, 11);
  TaschenRechner.subtrahieren(11, 3);
  final rechner = TaschenRechner();
  // rechner.multiplizieren(3, 3); // Error: The method 'multiplizieren' isn't defined for the class 'Rechner'.
}
