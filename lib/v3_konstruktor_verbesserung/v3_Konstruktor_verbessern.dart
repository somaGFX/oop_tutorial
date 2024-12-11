void main() {
  // mit dem Named-Parameter-Konstruktor muss die Reihenfolge der Parameter
  // nicht beachtet werden.
  // Allerdings _muss_ der Name des Parameters beim Bau des Objekts angegeben werden.
  final auto = AutoV3(baujahr: DateTime(2020), marke: 'Mercedes');
  auto.marke = 'Mercedes';
  auto.reifenZahl = -5;
  auto.details();
}

class AutoV3 {
  String material = 'metal';
  int reifenZahl = 4;
  int insassenZahl;
  DateTime baujahr;
  int alter;
  double reifenRadius;
  double reifenBreite;
  String? fahrer;
  String marke;
  // Named Parameter
  AutoV3({
    // (This) Schlüsselwort verweist zum aktuellen Klassenojekt.
    // Die Parameter die mit _required_ markiert sind, müssen
    // beim Bau des Objekts angegeben werden
    required this.baujahr,
    required this.marke,
    // Wenn der Parameter einen Standardwert hat oder nullable ist,
    // darf dieser nicht required sein
    this.reifenRadius = 30,
    this.reifenBreite = 20,
    this.alter = 24,
    this.insassenZahl = 5,
    this.fahrer,
  }) {
    print('AutoV3 created');
  }

  void fahren(int geschwindigkeit) {
    print('AutoV3 fährt');
  }

  void bremsen() {
    print('AutoV3 bremst');
  }

  void transportiern() {
    print('AutoV3 5 Personen werden transportiert');
  }

  void details() {
    print('Material: $material');
    print('InsassenZahl: $insassenZahl');
    print('Baujahr: $baujahr');
    print('Alter: $alter');
    print('Reifen-Radius: $reifenRadius');
    print('Reifen-Breite: $reifenBreite');
    print('Fahrer: $fahrer');
    print('Marke: $marke');
    print('Reifen-Anzahl: $reifenZahl');
  }
}
