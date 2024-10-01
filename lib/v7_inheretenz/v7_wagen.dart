import 'package:oop_tutorial/v5_aggregation.dart/v5_fahrer.dart';
import 'package:oop_tutorial/v6_composition.dart/v6_fahrt.dart';

class Wagen {
  static const material = 'Metal';
  final int minIinsasseZahl = 1;
  int reifenZahl;
  int maxInsasseZahl;
  final DateTime baujahr;
  double reifenRadius;
  double reifenBreite;
  Fahrer fahrer;
  String? marke;
  Wagen({
    required this.reifenZahl,
    required this.maxInsasseZahl,
    required this.baujahr,
    required this.reifenRadius,
    required this.reifenBreite,
    required this.fahrer,
    this.marke,
  });
  void details() {
    print('''
    Wagen Details:
    Reifen Zahl: $reifenZahl
    Max Insasse Zahl: $maxInsasseZahl
    Baujahr: $baujahr
    Reifen Radius: $reifenRadius
    Reifen Breite: $reifenBreite
    Fahrer: ${fahrer.vorname} ${fahrer.nachname}
    Marke: $marke
    ''');
  }

  void umfall(int reifenAnzahl) {
    reifenZahl -= reifenAnzahl;
    print('Wagen hat $reifenZahl Reifen');
  }

  void bremsen() {
    print('Wagen bremst');
  }

  void liefern() {
    print('Wagen kann $maxInsasseZahl Personen liefern');
  }

  void fahren() {
    final fahrt = Fahrt(start: DateTime.now(), fahrer: fahrer);
    fahrt.sicherheitsniveau();
    print('Wagen fährt');
  }
}
