/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export '../src/oop_tutorial_base.dart';

void main() {
  final auto = AutoV1();
  auto.fahrer = 'Ali';
  auto.marke = 'Mercedes';
  auto.details();
}

class AutoV1 {
  String material = 'metal';
  int insasseZahl = 5;
  DateTime baujahr = DateTime(2000, 01, 01);
  int alter = 24;
  int reifenZahl = 4;
  // 28 => 38
  double reifenRadius=30;
  // 18 => 25
  double reifenBreite=20;
  String fahrer = 'Max';
  String marke = 'BMW';
  AutoV1() {
    print('Auto created');
  }
  void fahren(int geschwindigkeit) {
    print('Auto fährt mit $geschwindigkeit km/h');
  }

  void bremsen() {
    print('Auto bremst');
  }

  void liefern() {
    print('Auto 5 Persone liefert');
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
