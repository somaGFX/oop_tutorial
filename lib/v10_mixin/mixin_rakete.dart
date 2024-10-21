mixin Rakete {
  int raketenAnzahl = 10;
  int macht = 1000;
  int geschwindigkeit = 20000;
  set racketeGeschwindigkeit(int geschwindigkeit) {
    this.geschwindigkeit = geschwindigkeit;
  }

  void schiessen() {
    if (raketenAnzahl == 0) {
      print('Rakete kann nicht schießen, weil keine Rakete mehr da ist');
      return;
    }
    raketenAnzahl--;
    print('Rakete schießt');
  }

  void reload() {
    raketenAnzahl = 10;
    print('Rakete ist wieder geladen');
  }

  void munitionDetails() {
    print('''
    Munition Details:
    Anzahl: $raketenAnzahl
    Macht: $macht
    Geschwindigkeit: $geschwindigkeit
    ''');
  }
}

