import 'package:oop_tutorial/globals/energie_enum.dart';
import 'package:oop_tutorial/globals/v5_fahrer.dart';

abstract class V9AbstractFahrzeug {
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
  V9AbstractFahrzeug({
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

  void einergieVerbrauch();

  void umfall(int reifenAnzahl);

  void bremsen();

  void liefern();

  void fahren();
}


