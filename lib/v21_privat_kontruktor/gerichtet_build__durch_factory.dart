
// Wegen des privaten Konstruktors kann ein Objekt nicht direkt erstellt werden
// der Bau des Objekts wird nur durch die Factory-Methode ermöglicht
class FahrzeugGerichtetBeiFactorie {
  final String name;
  final int geschwindigkeit;
  final String _typ;
  final int sitzplaetze;
  // Privater Konstruktor, kann keine Objekte direkt erstellen
  FahrzeugGerichtetBeiFactorie._(this.name, this.geschwindigkeit, this._typ, this.sitzplaetze);
  // Factory Methoden, die die Objekte erstellen
  factory FahrzeugGerichtetBeiFactorie.auto({required String name, required int geschwindigkeit}) {
    return FahrzeugGerichtetBeiFactorie._(name, geschwindigkeit, 'Auto', 5);
  }

  factory FahrzeugGerichtetBeiFactorie.bus(
      {required String name, required int geschwindigkeit, required int sitzplaetze}) {
    return FahrzeugGerichtetBeiFactorie._(name, geschwindigkeit, 'Bus', sitzplaetze);
  }

  factory FahrzeugGerichtetBeiFactorie.lkw({required String name, required int geschwindigkeit}) {
    return FahrzeugGerichtetBeiFactorie._(name, geschwindigkeit, 'LKW', 2);
  }
   // Getters und Methoden geltend für alle Fahrzeuge Typen
  String get info => 'FahrzeugDirectedWithFactorie: name: $name, Geschwindigkeit: $geschwindigkeit';

  void fahren() {
    // durch die Typen wird die Methode fahren() spezifiziert
    if (_typ == 'Auto') print('Das Auto fährt');
    if (_typ == 'Bus') print('Der Bus fährt');
    if (_typ == 'LKW') print('Der LKW fährt');
  }

  void bremsen() {
    print('Das Fahrzeug bremst');
  }
}
