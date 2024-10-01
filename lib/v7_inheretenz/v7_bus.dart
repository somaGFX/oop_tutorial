import 'package:oop_tutorial/generals/v5_fuehrerschein.dart';
import 'package:oop_tutorial/v6_composition.dart/v6_fahrt.dart';
import 'package:oop_tutorial/v7_inheretenz/v7_Fahrzeug.dart';

class BusV7 extends Fahrzeug {
  BusV7({
    super.reifenZahl = 6,
    super.maxInsasseZahl = 30,
    required super.baujahr,
    super.reifenRadius = 45,
    super.reifenBreite = 30,
    required super.fahrer,
  });
  @override
  void fahren() {
    if (fahrer == null) {
      print('Bus kann nicht fahren, weil kein Fahrer da ist');
      return;
    }
    if (fahrer!.fuehrerschein?.typ != FuehrerscheinTyp.bus) {
      fahrer!.fuehrerschein = null;
    }
    final fahrt = Fahrt(start: DateTime.now(), fahrer: fahrer!);
    fahrt.sicherheitsniveau();
    print('Bus fährt');
  }
}
