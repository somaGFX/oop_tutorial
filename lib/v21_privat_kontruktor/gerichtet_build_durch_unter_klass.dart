// Weil die Klasse abstract ist, kann sie nicht direkt instanziiert werden 
// der Bau des Objekts wird nur durch die Factory-Methode und Unterklassen ermöglicht
abstract class FahrzeugGerichtetBeiUnterKlassen {
  String name;
  int geschwindigkeit;
  // Privater Konstruktor
  FahrzeugGerichtetBeiUnterKlassen._(this.name, this.geschwindigkeit);

  factory FahrzeugGerichtetBeiUnterKlassen.auto({required String name, required int geschwindigkeit}) {
    return Auto._(name: name, geschwindigkeit: geschwindigkeit);
  }

  factory FahrzeugGerichtetBeiUnterKlassen.bus(
      {required String name, required int geschwindigkeit, required int sitzplaetze}) {
    return Bus._(name: name, geschwindigkeit: geschwindigkeit, sitzplaetze: sitzplaetze);
  }

  factory FahrzeugGerichtetBeiUnterKlassen.lkw(
      {required String name, required int geschwindigkeit, required int maxLast}) {
    return LKW._(name: name, geschwindigkeit: geschwindigkeit, maxLast: maxLast);
  }
  // Abstract Methoden, weil sie in den Unterklassen implementiert werden müssen
  void fahren();
}

// Private Klassen, die nur durch die abstrakten Klasse instanziiert werden können
class Auto extends FahrzeugGerichtetBeiUnterKlassen {
  // Auch die Tochterklassen haben private Konstruktoren.
  // weil sie sollen nicht direkt instanziiert werden.
  Auto._({required name, required geschwindigkeit}) : super._(name, geschwindigkeit);

  String get info => '$Auto: $name, $geschwindigkeit';
  // Die Methode fahren() wird in der Klasse implementiert
  @override
  void fahren() {
    print('Das Auto fährt');
  }

// man kann spezifische Methoden für die Unterklasse implementieren
  void bremsen() {
    print('Das Auto bremst');
  }
}

class Bus extends FahrzeugGerichtetBeiUnterKlassen {
  // Die Unterklassen können auch spezifische Attribute haben
  int sitzplaetze;
  Bus._({required name, required geschwindigkeit, required this.sitzplaetze}) : super._(name, geschwindigkeit);
  
  @override
  void fahren() {
    print('Der Bus fährt');
  }
}

class LKW extends FahrzeugGerichtetBeiUnterKlassen {
  int maxLast;
  LKW._({required name, required geschwindigkeit, required this.maxLast}) : super._(name, geschwindigkeit);
  @override
  void fahren() {
    print('Der LKW fährt');
  }
}
