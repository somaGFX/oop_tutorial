import 'package:oop_tutorial/globals/v5_fahrer.dart';
import 'package:oop_tutorial/globals/v6_fuehrerschein.dart';
import 'package:oop_tutorial/v7_inheretenz_von_normaler_classe/v7_Fahrzeug.dart';
import 'package:oop_tutorial/v7_inheretenz_von_normaler_classe/v7_bus.dart';
import 'package:oop_tutorial/v7_inheretenz_von_normaler_classe/v7_lkw.dart';

class Fahrt {
  DateTime start;
  DateTime? end;
  Fahrer fahrer;
  V7Fahrzeug? fahrzeug;
  Fahrt({
    this.fahrzeug,
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
    if (fahrzeug != null && fahrzeug! is BusV7 && fahrer.fuehrerschein!.typ != FuehrerscheinTyp.bus) {
      print('Fahrer hat keinen Bus Fuehrerschein');
      return;
    }

    if (fahrzeug != null && fahrzeug! is LKW && fahrer.fuehrerschein!.typ != FuehrerscheinTyp.lKW) {
      print('Fahrer hat keinen LKW Fuehrerschein');
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
