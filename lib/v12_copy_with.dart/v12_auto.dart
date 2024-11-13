

 // Normaler Auto Klasse
class V12Auto {
  int reifenZahl;
  int insasseZahl;
  DateTime baujahr;
  // 28 => 38
  double reifenRadius;
  // 18 => 25
  double reifenBreite;
  String? marke;
  V12Auto({
    this.reifenZahl = 4,
    this.insasseZahl = 5,
    required this.baujahr,
    this.reifenRadius = 30,
    this.reifenBreite = 20,
    this.marke,
  });

 
  void details() {
    print('''
    Fahrzeug Details:
    Reifen Zahl: $reifenZahl
    Max Insasse Zahl: $insasseZahl
    Baujahr: $baujahr
    Reifen Radius: $reifenRadius
    Reifen Breite: $reifenBreite
    Marke: $marke
    ''');
  }
}
