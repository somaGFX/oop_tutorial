import 'package:oop_tutorial/generals/autos_marken.dart';
import 'package:oop_tutorial/generals/energie_enum.dart';
import 'package:oop_tutorial/generals/engine.dart';

class V11Auto {
  int reifenZahl;
  int insasseZahl;
  DateTime baujahr;
  // 28 => 38
  double reifenRadius;
  // 18 => 25
  double reifenBreite;
  Engine engine;
  String? marke;
  V11Auto({
    this.reifenZahl = 4,
    this.insasseZahl = 5,
    required this.baujahr,
    this.reifenRadius = 30,
    this.reifenBreite = 20,
    required this.engine,
    this.marke,
  });
  factory V11Auto.defaultAuto() {
    return V11Auto(
      baujahr: DateTime(2020),
      engine: Engine(
        energieType: EnergieType.benzine.lable,
        leistung: 200,
        zylinderAnzahl: 6,
        maxGeschwindigkeit: 220,
      ),
    );
  }
  factory V11Auto.audiA8(){
    return V11Auto(
      marke: Marken.audiA8.label,
      baujahr: DateTime(2020),
      engine: Engine(
        energieType: EnergieType.benzine.lable,
        leistung: 200,
        zylinderAnzahl: 6,
        maxGeschwindigkeit: 220,
      ),
    );
  }
  factory V11Auto.fromMarke(String marke) {
    if (marke == Marken.audiA8.label) {
      return V11Auto(
        marke: Marken.audiA8.label,
        baujahr: DateTime(2020),
        engine: Engine(
          energieType: EnergieType.benzine.lable,
          leistung: 200,
          zylinderAnzahl: 6,
          maxGeschwindigkeit: 220,
        ),
      );
    }
    if (marke == Marken.bmwX5.label) {
      return V11Auto(
        marke: Marken.bmwX5.label,
        baujahr: DateTime(2021),
        engine: Engine(
          energieType: EnergieType.diesel.lable,
          leistung: 250,
          zylinderAnzahl: 8,
          maxGeschwindigkeit: 240,
        ),
      );
    }
    if(marke == Marken.mercedesS.label){
      return V11Auto(
        marke: Marken.mercedesS.label,
        baujahr: DateTime(2022),
        engine: Engine(
          energieType: EnergieType.elektrisch.lable,
          leistung: 300,
          zylinderAnzahl: 0,
          maxGeschwindigkeit: 250,
        ),
      );
    }
    if(marke == Marken.toyotaCamry.label){

      return V11Auto(
        marke: Marken.toyotaCamry.label,
        baujahr: DateTime(2023),
        engine: Engine(
          energieType: EnergieType.hybride.lable,
          leistung: 180,
          zylinderAnzahl: 4,
          maxGeschwindigkeit: 200,
        ),
      );
    } 
  throw Exception('Marke nicht gefunden');

  }

  void details() {
    print('''
    Fahrzeug Details:
    Reifen Zahl: $reifenZahl
    Max Insasse Zahl: $insasseZahl
    Baujahr: $baujahr
    Reifen Radius: $reifenRadius
    Reifen Breite: $reifenBreite
    Marke: $marke
    engine: ${engine.details()}
    ''');
  }
}
