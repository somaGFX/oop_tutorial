/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

import 'package:oop_tutorial/generals/v5_fahrer.dart';
import 'package:oop_tutorial/generals/v5_fuehrerschein.dart';
import 'package:oop_tutorial/generals/v6_fahrt.dart';

export '../src/oop_tutorial_base.dart';

void main() {
  final maxFuehrerschein = Fuehrerschein(
    id: 123456,
    typ: FuehrerscheinTyp.pkw,
    ausstellungsdatum: DateTime(2020),
    ablaufdatum: DateTime(2025),
  );
  final max = Fahrer(vorname: 'Max', nachname: 'Mustermann', alter: 25, fuehrerschein: maxFuehrerschein);
  final auto = AutoV6(baujahr: DateTime(2020), marke: 'Mercedes', reifenRadius: 28, reifenBreite: 18, fahrer: max);

  auto.fahren();
}
//########################## Encapsulation #########################

class AutoV6 {
  static const String material = 'Metal';
  int _reifenZahl = 4;
  int _maxInsasseZahl;
  final int _minIinsasseZahl = 1;
  final DateTime _baujahr;
  double _reifenRadius;
  double _reifenBreite;
  Fahrer fahrer;
  String? marke;
  // named Konstruktor
  AutoV6({
    required DateTime baujahr,
    required this.marke,
    int maxIinsasseZahl = 5,
    required double reifenRadius,
    required double reifenBreite,
    required this.fahrer,
  })  : _maxInsasseZahl = maxIinsasseZahl,
        _baujahr = baujahr,
        _reifenRadius = reifenRadius,
        _reifenBreite = reifenBreite {
    if (maxIinsasseZahl > 8) throw Exception('Max IinsasseZahl darf nicht > 8 sein');
    if (maxIinsasseZahl < 1) throw Exception('Max IinsasseZahl darf nicht < 1 sein');
    if (baujahr.isAfter(DateTime.now())) throw Exception('Baujahr darf nicht in der Zukunft sein');
    if (baujahr.isBefore(DateTime(1940))) throw Exception('Baujahr darf nicht zu alt sein');
    print('AutoV6 created at ${DateTime.now()}');
  }

//######################### Setters #########################

  set maxIinsasseZahl(int value) {
    if (value > 8) {
      _maxInsasseZahl = 8;
      return;
    }
    if (value < 1) {
      _maxInsasseZahl = 1;
      return;
    }
    _maxInsasseZahl = value;
  }

  set reifenRadius(double value) {
    if (value < 28) {
      _reifenRadius = 28;
      return;
    }
    if (value > 38) {
      _reifenRadius = 38;
      return;
    }
    _reifenRadius = value;
  }

  set reifenBreite(double value) {
    if (value < 18) {
      _reifenBreite = 18;
      return;
    }
    if (value > 25) {
      _reifenBreite = 25;
      return;
    }
    _reifenBreite = value;
  }

//########################## getters #########################
  int get moeglichepassagiere => _maxInsasseZahl - _minIinsasseZahl;
  DateTime get baujahr => _baujahr;
  int get alter => DateTime.now().year - _baujahr.year;
  int get reifenZahl => _reifenZahl;
//########################## Methoden #########################
  void fahren() {
    final fahrt = Fahrt(start: DateTime.now(), fahrer: fahrer);
    fahrt.sicherheitsniveau();
  }

  void anhalten() {
    print('AutoV6 hält an');
  }

  void umfall(int verlusteReifen) {
    if (verlusteReifen.isNegative || verlusteReifen > _reifenZahl) return;
    _reifenZahl -= verlusteReifen;
    print('AutoV6 umfällt');
  }

  void bremsen() {
    print('AutoV6 bremst');
  }

  void liefern() {
    print('AutoV6 kann $_maxInsasseZahl Persone liefert');
  }

  void details() {
    print('Material: $material');
    print('Max IinsasseZahl: $_maxInsasseZahl');
    print('Baujahr: $_baujahr');
    print('Alter: $alter');
    print('Reifen Radius: $_reifenRadius');
    print('Reifen Breite: $_reifenBreite');
    print('Fahrer: $fahrer');
    print('Marke: $marke');
    print('Reifen Zahl: $reifenZahl');
  }
}
