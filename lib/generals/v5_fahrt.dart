import 'package:oop_tutorial/generals/v5_fahrer.dart';

class Fahrt {
  DateTime start;
  DateTime? end;
  Fahrer fahrer;
  Fahrt({
    required this.start,
    this.end,
    required this.fahrer,
  });
  void endFahrt() {
    end = DateTime.now();
  }

  void sicherheitsniveau() {
    if (fahrer.alter < 10) {
      print('Fahrt-Daten: Katastrophal Fahrt');
      return;
    }
    if (fahrer.fuehrerschein == null) {
      print('Fahrt-Daten: Fahrer hat keinen Fuehrerschein');
      return;
    }
    if (fahrer.fahrErfahrung < 3) {
      print('Fahrt-Daten: Fahrer hat zu wenig Fahrerfahrung');
      return;
    }
    if (fahrer.alter < 18) {
      print('Fahrt-Daten: Fahrer ist zu jung');
      return;
    }
    print('Fahrt-Daten: Sichere Fahrt');
  }
}
