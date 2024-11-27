import 'package:oop_tutorial/globals/energie_enum.dart';
import 'package:oop_tutorial/globals/v5_fahrer.dart';


// die Oberklasse kann ganz normal sein.
class V7Fahrzeug {
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
  V7Fahrzeug({
    required this.reifenZahl,
    required this.maxInsasseZahl,
    required this.baujahr,
    required this.reifenRadius,
    required this.reifenBreite,
    this.fahrer,
    this.marke,
    this.energieType,
  }){
    print('Fahrzeug Objekt ist erstellt');
  }
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
    print('Fahrzeug verbraucht Energie');
  }

  void umfall(int reifenAnzahl) {
    reifenZahl -= reifenAnzahl;
    print('Fahrzeug hat $reifenZahl Reifen');
  }

  void bremsen() {
    print('Fahrzeug bremst');
  }

  void liefern() {
    print('Fahrzeug kann $maxInsasseZahl Personen liefern');
  }

  void fahren() {
    if (fahrer == null) {
      print('Fahrzeug kann nicht fahren, weil kein Fahrer da ist');
      return;
    }

   
  }
}
