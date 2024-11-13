

void main() {
  // mit named parameter Konstruktor muss die Reihenfolge der Parameter nicht beachtet werden
  // Aber der Name des Parameters muss beim Bau des Objekts gegeben werden
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
  double reifenRadius;
  double reifenBreite;
  String? fahrer;
  String marke;
  // Named Parameter
  AutoV3({
    // (This) Schlusselwort weist zur aktuellen Klassenojekt zu.
    // die Parameter die mit required markiert sind, müssen beim Bau des Objekts gegeben werden
    required this.baujahr,
    required this.marke,
    // Wenn der Parameter standardwert hat oder nullable ist, darf nich required sein
    this.reifenRadius = 30,
    this.reifenBreite = 20,
    this.alter = 24,
    this.insasseZahl = 5,
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
