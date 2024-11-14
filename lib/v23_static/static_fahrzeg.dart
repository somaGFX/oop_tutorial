// Klasen können static Attribute, Methoden und Getters haben.
// Diese gehören zur Klasse und nicht zu einem Objekt.
// Die static Attribute und Methoden können ohne Instanzierung der Klasse aufgerufen werden.
// Sie können nicht aus Objekten aufgerufen werden.

abstract class FahrzeugV23 {
  // Static Attribut kann var, final oder const sein.
  // Static Attribut und Methoden können nicht von Unterklasse zugreifen.
  // Sie werden einfach nicht vererbt.
  static int fahrzeugeAnzahl = 0;
  static final List<FahrzeugV23> fahrzeuge = [];
  static const int reifenZahl = 4;
  int geschwindigkeit = 220;
  FahrzeugV23() {
    // beim Instanzieren der Klasse wird die Anzahl der Fahrzeuge erhöht.
    fahrzeugeAnzahl++;
    // beim Instanzieren der Klasse wird das Objekt in die Liste hinzugefügt.
    fahrzeuge.add(this);
  }
  // Static Methode kann nur static Attribute und Methoden verwenden.
  static void fahren() {
    print('Fahrzeug fährt');
    // geschwindigkeit = 50; // Error: Instance member 'geschwindigkeit' can't be accessed using a static access.
  }
}

class BusV23 extends FahrzeugV23 {
  static String get classname => 'BusV23';

  // @override // Die Methode wird nicht von der Oberklasse geerbt, daher muss sie überschrieben werden.
  static void fahren() {
    print('Bus fährt');
  }

  @override
  String toString() => 'Bus';
}

class AutoV23 extends FahrzeugV23 {
  static String get classname => 'AutoV23';
  @override
  String toString() => 'Auto';
}

class LkwV23 extends FahrzeugV23 {
  static String get classname => 'LkwV23';
  @override
  String toString() => 'Lkw';
}
