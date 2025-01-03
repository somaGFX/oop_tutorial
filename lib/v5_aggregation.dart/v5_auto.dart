import 'package:oop_tutorial/globals/v5_fahrer.dart';
import 'package:oop_tutorial/globals/v6_fuehrerschein.dart';

void main() {
  final maxFuehrerschein = Fuehrerschein(
    id: 123456,
    typ: FuehrerscheinTyp.pkw,
    ausstellungsdatum: DateTime(2020),
    ablaufdatum: DateTime(2025),
  );
  final max = Fahrer(vorname: 'Max', nachname: 'Mustermann', alter: 25, fuehrerschein: maxFuehrerschein);
  final auto = AutoV5(baujahr: DateTime(2020), marke: 'Mercedes', reifenRadius: 28, reifenBreite: 18, fahrer: max);

  auto.details();
}

class AutoV5 {
  static const String material = 'Metal';
  int _reifenZahl = 4;
  int _maxInsasseZahl;
  final int _minIinsasseZahl = 1;
  final DateTime _baujahr;
  double _reifenRadius;
  double _reifenBreite;
  // Aggregation Relation, weil Fahrer unabhängig von Auto existieren kann
  Fahrer fahrer;
  String? marke;
  // named Parameter
  AutoV5({
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
    print('AutoV5 created at ${DateTime.now()}');
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
    if (fahrer.fuehrerschein == null || !fahrer.fuehrerschein!.isGueltig) {
      print('Fahrer hat kein gültigen Führerschein');
      return;
    }
    print('AutoV5 fährt');
  }

  void anhalten() {
    print('AutoV5 hält an');
  }

  void umfall(int verlusteReifen) {
    if (verlusteReifen.isNegative || verlusteReifen > _reifenZahl) return;
    _reifenZahl -= verlusteReifen;
    print('AutoV5 umfällt');
  }

  void bremsen() {
    print('AutoV5 bremst');
  }

  void liefern() {
    print('AutoV5 kann $_maxInsasseZahl Persone liefert');
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
