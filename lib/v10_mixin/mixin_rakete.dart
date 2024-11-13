

// Mixin Rakete
mixin Rakete {
  // Mixins können keine Konstruktoren haben, daher müssen die Attribute initialisiert werden.
  int raketenAnzahl = 10;
  int macht = 1000;
  int geschwindigkeit = 20000;
 // Mixins können Methoden, Setters und Getters haben.
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

