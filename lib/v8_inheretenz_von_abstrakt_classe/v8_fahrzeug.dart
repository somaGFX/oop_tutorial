import 'package:oop_tutorial/generals/energie_enum.dart';
import 'package:oop_tutorial/generals/v5_fahrer.dart';

abstract class V8Fahrzeug {
  static const material = 'Metal';
  final int minIinsasseZahl = 1;
  int reifenZahl;
  int maxInsasseZahl;
  final DateTime baujahr;
  double reifenRadius;
  double reifenBreite;
  Fahrer? fahrer;
  String? marke;
  EnergieType? energieType;
  V8Fahrzeug({
    required this.reifenZahl,
    required this.maxInsasseZahl,
    required this.baujahr,
    required this.reifenRadius,
    required this.reifenBreite,
    this.fahrer,
    this.marke,
    this.energieType,
  });
  void details() {
    print('''
    Fahrzeug Details:
    Reifen Zahl: $reifenZahl
    Max Insasse Zahl: $maxInsasseZahl
    Baujahr: $baujahr
    Reifen Radius: $reifenRadius
    Reifen Breite: $reifenBreite
    Fahrer: ${fahrer?.vorname ?? ''} ${fahrer?.nachname ?? ''}
    Marke: $marke
    ''');
  }

  void einergieVerbrauch() {
    print('Fahrzeug verbraucht $energieType');
  }

  void umfall(int reifenAnzahl);

  void bremsen() {
    print('Fahrzeug bremst');
  }

  void liefern() {
    print('Fahrzeug kann $maxInsasseZahl Personen liefern');
  }
   // Abstract Klassen können auch abstract Methoden haben
  void fahren();
}
