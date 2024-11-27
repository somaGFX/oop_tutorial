void main() {
  // Der Bau der Objekte wird durch den Konstruktor vereinfacht
  // Die Verlangten Parameter Baujahr ist am Anfang gegeben, danach die Optionalen
  final auto = AutoV2(DateTime(2020, 01, 01), 38, 25, 24);
  auto.fahrer = 'Ali';
  auto.marke = 'Mercedes';
  auto.details();
}

class AutoV2 {
  // Material und reifenZahl haben fast immer den gleichen Wert,
  String material = 'metal';
  int insasseZahl = 5;
  // late => später initialisiert, weil es nachdem Bau des Objekts initialisiert wird
  late DateTime baujahr;
  late int alter;
  int reifenZahl = 4;
  late double reifenRadius;
  late double reifenBreite;
  String? fahrer;
  String marke = 'BMW';
  // Baujahr variiert sich häufig zwischen einem Auto und einem anderen, daher ist es nicht sinnvoll, es als Konstante zu deklarieren
  AutoV2(DateTime gegebeneBaujahr,
      // optionalen Parameter sind in ekige Klammern geschrieben
      [double gegebeneReifenRadius = 30,
      double gegebeneReifenBreite = 20,
      int gegebeneAlter = 24]) {
    // print('baujahr: $baujahr'); ergibt Error,weil baujahr noch nicht initialisiert ist
    // werte werden erst nach dem Bau des Objekts zugewiesen
    baujahr = gegebeneBaujahr;
    reifenRadius = gegebeneReifenRadius;
    reifenBreite = gegebeneReifenBreite;
    alter = gegebeneAlter;
    print('AutoV2 created');
  }
  void fahren(int geschwindigkeit) {
    print('AutoV2 fährt');
  }

  void bremsen() {
    print('AutoV2 bremst');
  }

  void liefern() {
    print('AutoV2 5 Persone liefert');
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
