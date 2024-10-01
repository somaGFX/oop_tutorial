/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export '../src/oop_tutorial_base.dart';

void main() {
  final auto = AutoV3(baujahr: DateTime(2020), marke: 'Mercedes');
  auto.marke = 'Mercedes';
  auto.details();
}

class AutoV3 {
  String material = 'metal';
  int reifenZahl = 4;
  int insasseZahl;
  DateTime baujahr;
  int alter;
  // 28 => 38
  double reifenRadius;
  // 18 => 25
  double reifenBreite;
  String? fahrer;
  String marke;
  // name Konstruktor
  AutoV3({
    required this.baujahr,
    required this.marke,
    this.reifenRadius = 30,
    this.reifenBreite = 20,
    this.alter = 24,
    this.insasseZahl = 5,
    this.fahrer,
  }) {
    print('AutoV3 created');
  }
  // Abgekürzte Konstruktor
  // AutoV3(this.baujahr, [this.reifenRadius=30, this.reifenBreite=18, this.alter=15]) {
  //   print('AutoV3 created');
  // }
  // AutoV3(DateTime gegebeneBaujahr,[double gegebeneReifenRadius=30,double gegebeneReifenBreite=20,int gegebeneAlter=24]) {
  //   baujahr = gegebeneBaujahr;
  //   reifenRadius = gegebeneReifenRadius;
  //   reifenBreite = gegebeneReifenBreite;
  //   alter = gegebeneAlter;
  //   print('AutoV3 created');
  // }
  void fahren(int geschwindigkeit) {
    print('AutoV3 fährt');
  }

  void bremsen() {
    print('AutoV3 bremst');
  }

  void liefern() {
    print('AutoV3 5 Persone liefert');
  }

  void details() {
    print('Material: $material');
    print('InsasseZahl: $insasseZahl');
    print('Baujahr: $baujahr');
    print('Alter: $alter');
    print('Reifen Radius: $reifenRadius');
    print('Reifen Breite: $reifenBreite');
    print('Fahrer: $fahrer');
    print('Marke: $marke');
    print('Reifen Zahl: $reifenZahl');
  }
}
