mixin Rakete {
  int anzahl = 10;
  int macht = 1000;
  int geschwindigkeit = 20000;
  set racketeGeschwindigkeit(int geschwindigkeit) {
    this.geschwindigkeit = geschwindigkeit;
  }

  void schissen() {
    if (anzahl == 0) {
      print('Rakete kann nicht schießen, weil keine Rakete mehr da ist');
      return;
    }
    anzahl--;
    print('Rakete schießt');
  }

  void reload() {
    anzahl = 10;
    print('Rakete ist wieder geladen');
  }

  void munitionDetails() {
    print('''
    Munition Details:
    Anzahl: $anzahl
    Macht: $macht
    Geschwindigkeit: $geschwindigkeit
    ''');
  }
}
