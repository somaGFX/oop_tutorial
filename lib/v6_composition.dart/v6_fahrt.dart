import 'package:oop_tutorial/v5_aggregation.dart/v5_fahrer.dart';

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
      print('Scheiße');
      return;
    }
    if (fahrer.fuehrerschein == null) {
      print('Fahrer hat keinen Fuehrerschein');
      return;
    }
    if (fahrer.fahrErfahrung < 3) {
      print('Fahrer hat zu wenig Fahrerfahrung');
      return;
    }
    if (fahrer.alter < 18) {
      print('Fahrer ist zu jung');
      return;
    }
    print('Sichere Fahrt');
  }
}
