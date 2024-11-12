

// Wegen des privaten Konstruktors kann ein Objekt nicht direkt erstellt werden
// der Bau des Objekts wird nur durch die Factory-Methode und Unterklassen ermöglicht

abstract class FahrzeugGerichtetBeiUnterKlassen {
  String name;
  int geschwindigkeit;
  // Privater Konstruktor
  FahrzeugGerichtetBeiUnterKlassen._(this.name, this.geschwindigkeit);

  factory FahrzeugGerichtetBeiUnterKlassen.auto({required String name, required int geschwindigkeit}) {
    return _Auto(name: name, geschwindigkeit: geschwindigkeit);
  }
  factory FahrzeugGerichtetBeiUnterKlassen.buss(
      {required String name, required int geschwindigkeit, required int sitzplaetze}) {
    return _Bus(name: name, geschwindigkeit: geschwindigkeit, sitzplaetze: sitzplaetze);
  }

  factory FahrzeugGerichtetBeiUnterKlassen.publischBus(
      {required String name, required int geschwindigkeit, required int sitzplaetze}) {
    return Bus(name: name, geschwindigkeit: geschwindigkeit, sitzplaetze: sitzplaetze);
  }

  factory FahrzeugGerichtetBeiUnterKlassen.lkw(
      {required String name, required int geschwindigkeit, required int maxLast}) {
    return _LKW(name: name, geschwindigkeit: geschwindigkeit, maxLast: maxLast);
  }
  // Abstract Methoden, weil sie in den Unterklassen implementiert werden müssen
  void fahren();
}

// Private Klassen, die nur durch die abstrakten Klasse instanziiert werden können
class _Auto extends FahrzeugGerichtetBeiUnterKlassen {
  _Auto({required name, required geschwindigkeit}) : super._(name, geschwindigkeit);

  String get info => '$_Auto: $name, $geschwindigkeit';
  // Die Methode fahren() wird in der Klasse implementiert
  // die neue Implementierung in Tochter wird übernommen
  @override
  void fahren() {
    print('Das Auto fährt');
  }
  // die Methoden und Eigenschaften die nur in der private Unterklasse existieren 
  // können nicht durch die Objekte zugegriffen werden
  void bremsen() {
    print('Das Auto bremst');
  }
}

class _Bus extends FahrzeugGerichtetBeiUnterKlassen {
  // auch die Attribuen, die nur in der privaten Klasse existieren 
  // können nicht durch die Objekte zugegriffen werden
  int sitzplaetze;
  _Bus({required name, required geschwindigkeit, required this.sitzplaetze}) : super._(name, geschwindigkeit);
  @override
  void fahren() {
    print('Der Bus fährt');
  }
}

class Bus extends FahrzeugGerichtetBeiUnterKlassen {
  int sitzplaetze;
  Bus({required name, required geschwindigkeit, required this.sitzplaetze}) : super._(name, geschwindigkeit);
  @override
  void fahren() {
    print('Der Bus fährt');
  }
}

class _LKW extends FahrzeugGerichtetBeiUnterKlassen {
  int maxLast;
  _LKW({required name, required geschwindigkeit, required this.maxLast}) : super._(name, geschwindigkeit);
  @override
  void fahren() {
    print('Der LKW fährt');
  }
}
