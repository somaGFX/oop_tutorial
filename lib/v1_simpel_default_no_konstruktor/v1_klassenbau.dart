

void main() {
  // Objekt-Instanzierung, (Erzeugung eines Objekts)
  final auto = AutoV1();
  // Änderung des Werts eines Attributs
  auto.fahrer = 'Ali';
  auto.marke = 'Mercedes';
  // Methode aufrufen
  auto.details();
}

// ########################## Klassenbau #########################
// class Klassename {}
class AutoV1 {
  // ###################### Attribute ######################
  // Attribut-Datentypen Attribut-Name = Wert;
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
  // ###################### Konstruktor ######################
  // Hier ist es unnötig, weil Dart automatisch einen Konstruktor erstellt.
  // Wir haben es nur für die Erklärung geschrieben.
  AutoV1() {
    print('Auto created');
  }
  // ###################### Methoden #########################
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
