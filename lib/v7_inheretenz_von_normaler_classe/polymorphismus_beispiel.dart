
import 'package:oop_tutorial/generals/v5_fahrer.dart';
import 'package:oop_tutorial/generals/v6_fuehrerschein.dart';
import 'package:oop_tutorial/v7_inheretenz_von_normaler_classe/v7_Fahrzeug.dart';
import 'package:oop_tutorial/v7_inheretenz_von_normaler_classe/v7_auto.dart';
import 'package:oop_tutorial/v7_inheretenz_von_normaler_classe/v7_bus.dart';
import 'package:oop_tutorial/v7_inheretenz_von_normaler_classe/v7_lkw.dart';
import 'package:oop_tutorial/v7_inheretenz_von_normaler_classe/v7_spielzeug.dart';

void main(){
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
  // auto.fahren();
  final bus = BusV7(
    baujahr: DateTime(2000),
    fahrer: max,
  );
    final spielzeug = Spielzeug(baujahr: DateTime(2022), baterienAnzahl: 2, baterienGrosse: 3); 
  spielzeug.details();
  final lkw = LKW(maxLast: 100, baujahr: DateTime(2020), fahrer: max);
  // Polymorphismus
  // 
  // final List<AutoV7> fahrzeuge = [lkw,auto,bus,spielzeug]; // Fehler: weil Lkw, Bus und Spielzeug sind keine AutoV7
  // final List<BusV7> fahrzeuge = [lkw,auto,bus,spielzeug]; // Fehler: weil Lkw, Auto und Spielzeug sind keine BusV7

  final List<V7Fahrzeug> fahrzeuge = [lkw,auto,bus,spielzeug]; // richtig: weil Lkw, Auto, Bus und Spielzeug sind V7Fahrzeug 
  for (var fahrzeug in fahrzeuge) {
    fahrzeug.fahren();  // Polymorphismus: Kompierer weiss nicht welches Fahrzeug ist, aber er weiss, dass alle Fahrzeuge fahren können
  }

final List<dynamic> ListDynamic= [lkw,'Auto',auto,bus,spielzeug]; 
  for (var fahrzeug in ListDynamic) {
    fahrzeug.fahren();  // Fehler: weil fahren() Methode existiert nicht in String und dies Fehler ist nur zur Laufzeit sichtbar
  }
}