import 'package:oop_tutorial/globals/energie_enum.dart';
import 'package:oop_tutorial/globals/v5_fahrer.dart';
import 'package:oop_tutorial/v9_implementierung/v9_abstract_fahrzeug.dart';

// man kan  auch abstract class implementieren
class AutoV9Abs implements V9AbstractFahrzeug {
  
  @override
  int reifenZahl;
  @override
  int maxInsasseZahl;
  @override
  int minIinsasseZahl = 1;
  @override
  final DateTime baujahr;
  @override
  double reifenRadius;
  @override
  double reifenBreite;
  @override
  Fahrer? fahrer;
  @override
  String? marke;
  @override
  EnergieType? energieType;

  AutoV9Abs({
     this.reifenZahl=4,
     this.maxInsasseZahl=5,
    required this.baujahr,
     this.reifenRadius=30,
     this.reifenBreite=20,
    this.fahrer,
    this.marke,
    this.energieType,
  });

  @override
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

  @override
  void einergieVerbrauch() {
    print('Fahrzeug verbraucht $energieType');
  }

  @override
  void umfall(int reifenAnzahl) {
    print('Fahrzeug hat $reifenAnzahl Reifen umgefallen');
  }

  @override
  void bremsen() {
    print('Fahrzeug bremst');
  }

  @override
  void liefern() {
    print('Fahrzeug kann $maxInsasseZahl Personen liefern');
  }

  @override
  void fahren() {
    print('Auto fährt');
  }
}
