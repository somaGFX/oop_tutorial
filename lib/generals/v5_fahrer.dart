import 'package:oop_tutorial/generals/v5_fuehrerschein.dart';

class Fahrer {
  String vorname;
  String nachname;
  Fuehrerschein? _fuehrerschein;
  int alter;
  Fahrer({required this.vorname, required this.nachname, Fuehrerschein? fuehrerschein, required this.alter})
      : _fuehrerschein = fuehrerschein {
    if (_fuehrerschein == null) return;
    if (alter - _fuehrerschein!.alter < 15) _fuehrerschein = null;
    if (alter > 99) _fuehrerschein = null;
  }
  set fuehrerschein(Fuehrerschein? value) {
    if (value == null) {
      _fuehrerschein = value;
      return;
    }

    if (alter - value.alter < 15) {
      _fuehrerschein = null;
      return;
    }
    if (alter > 99) {
      _fuehrerschein = null;
      return;
    }
    _fuehrerschein = value;
  }

  Fuehrerschein? get fuehrerschein => _fuehrerschein;
  int get fahrErfahrung => DateTime.now().difference(_fuehrerschein!.ausstellungsdatum).inDays ~/ 365;
}
