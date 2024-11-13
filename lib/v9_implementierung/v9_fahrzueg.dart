import 'package:oop_tutorial/generals/energie_enum.dart';
import 'package:oop_tutorial/generals/v5_fahrer.dart';
import 'package:oop_tutorial/generals/v5_fahrt.dart';


// Bei der Implementierung kann die oberklasse ganz normal, oder abstract sein.
class V9Fahrzeug {
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
  V9Fahrzeug({
    required this.reifenZahl,
    required this.maxInsasseZahl,
    required this.baujahr,
    required this.reifenRadius,
    required this.reifenBreite,
    this.fahrer,
    this.marke,
    this.energieType,
  }){
    // bei der Implementierung ein Unterklasse wird die Konstruktor von der Oberklasse nicht aufgerufen werden.
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
    print('Fahrzeug verbraucht $energieType');
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
    final fahrt = Fahrt(start: DateTime.now(), fahrer: fahrer!);
    fahrt.sicherheitsniveau();
    print('Fahrzeug fährt');
  }
}
