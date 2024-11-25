import 'package:oop_tutorial/generals/v6_fuehrerschein.dart';

class Fahrer {
  String vorname;
  String nachname;
  Fuehrerschein? _fuehrerschein;
  int alter;
  Fahrer({required this.vorname, required this.nachname, Fuehrerschein? fuehrerschein, required this.alter})
      : _fuehrerschein = fuehrerschein {
    if (_fuehrerschein == null) return;
    // Wenn der Fahrer jünger als 15 Jahre ist, darf er kein Führerschein haben
    if (alter - _fuehrerschein!.alter < 15) _fuehrerschein = null;
    // Wenn der Fahrer älter als 99 Jahre ist, darf er kein Führerschein haben
    if (alter > 99) _fuehrerschein = null;

    if( _fuehrerschein!.ablaufdatum.isBefore(DateTime.now())) _fuehrerschein = null;
  }
  set fuehrerschein(Fuehrerschein? value) {
    if (value == null) {
      _fuehrerschein = value;
      return;
    }
  // Wenn der Fahrer jünger als 15 Jahre ist, darf er kein Führerschein haben
    if (alter - value.alter < 15) {
      _fuehrerschein = null;
      return;
    }
    // Wenn der Fahrer älter als 99 Jahre ist, darf er kein Führerschein haben
    if (alter > 99) {
      _fuehrerschein = null;
      return;
    }
    _fuehrerschein = value;
  }

  Fuehrerschein? get fuehrerschein => _fuehrerschein;

  // Berechnet die Fahrerfahrung in Jahren
  int get fahrErfahrung => DateTime.now().difference(_fuehrerschein!.ausstellungsdatum).inDays ~/ 365;

  @override
  String toString() {
    return 'Fahrer: $vorname $nachname, Alter: $alter, Fuehrerschein: $_fuehrerschein';
  }
}
