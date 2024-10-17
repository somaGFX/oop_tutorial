import 'package:oop_tutorial/generals/v5_fahrer.dart';
import 'package:oop_tutorial/generals/v6_fuehrerschein.dart';
import 'package:oop_tutorial/v7_inheretenz_von_normaler_classe/v7_Fahrzeug.dart';
import 'package:oop_tutorial/v7_inheretenz_von_normaler_classe/v7_auto.dart';
import 'package:oop_tutorial/v7_inheretenz_von_normaler_classe/v7_bus.dart';
import 'package:oop_tutorial/v7_inheretenz_von_normaler_classe/v7_lkw.dart';
import 'package:oop_tutorial/v7_inheretenz_von_normaler_classe/v7_spielzeug.dart';

void main() {
  final feurerschein = Fuehrerschein(
    ausstellungsdatum: DateTime(2010),
    ablaufdatum: DateTime(2033),
    typ: FuehrerscheinTyp.pkw,
    id: 6436543,
  );
  final max = Fahrer(
    vorname: 'Max',
    nachname: 'Mustermann',
    alter: 30,
    fuehrerschein: feurerschein,
  );
  final auto = AutoV7(
    baujahr: DateTime(2020),
    fahrer: max,
  );
  auto.fahren();
  final bus = BusV7(
    baujahr: DateTime(2000),
    fahrer: max,
  );
  bus.fahren();
  final spielzeug = Spielzeug(baujahr: DateTime(2022), baterienAnzahl: 2, baterienGrosse: 3); 
  spielzeug.details();
  final lkw = LKW(maxLast: 100, baujahr: DateTime(2020), fahrer: max);
  lkw.details();
  // Polymorphismus
  final List<V7Fahrzeug> fahrzeuge = [lkw,auto,bus,spielzeug];
  print(fahrzeuge.length);
}


