
// Ein Enum kann auch als Klasse definiert werden.
// Jeweils Elemente gilt als Objekt mit Attributen und Methoden.
enum FahrzeugEnum {
// Hier wird die Enum-Klasse Elemente definiert.
  auto(geschwindigkeit: 220, name: 'BMW', sitzplaetze: 5),
  bus(geschwindigkeit: 180, name: 'Mazedis', sitzplaetze: 5),
  lkw(geschwindigkeit: 120, name: 'Toyota', sitzplaetze: 2),
  ;

  // Attribute
  final String name;
  final int geschwindigkeit;
  final int sitzplaetze;
  // Konstruktor neim Eunm Klasse kann nur Const sein.
  const FahrzeugEnum({required this.name, required this.geschwindigkeit, required this.sitzplaetze});

 // Enum können keinen spzifisch Bau des Objekts haben.
 // Enum können keinen Factory-Konstruktor haben.
 // als Alternative kann eine statische Methode verwendet werden, die ein Objekt ähnlicher Klasse zurückgibt.
  static flexiibleAuto({required String name, required int geschwindigkeit, required int sitzplaetze}) {
    return FlexibleAuto(name: name, geschwindigkeit: geschwindigkeit, sitzplaetze: sitzplaetze);
  }

// Enum Klasse kann auch Getters und Methoden haben.
  String get info => 'FahrzeugEnum: name: $name, Geschwindigkeit: $geschwindigkeit, Sitzplätze: $sitzplaetze';

  void fahren() {
    // Die Methode können spezifiziert werden.
    if (this == FahrzeugEnum.auto) print('Das Auto fährt');
    if (this == FahrzeugEnum.bus) print('Der Bus fährt');
    if (this == FahrzeugEnum.lkw) print('Der LKW fährt');
  }

  void bremsen() {
    print('Das Fahrzeug bremst');
  }
}


// Eine normale Klasse, die benutzt wird, um die Enum-Klasse zu erweitern.
class FlexibleAuto {
  final String name;
  final int geschwindigkeit;
  final int sitzplaetze;
  FlexibleAuto({required this.name, required this.geschwindigkeit, required this.sitzplaetze});

  String get info => 'FlexibleAuto: name: $name, Geschwindigkeit: $geschwindigkeit, Sitzplätze: $sitzplaetze';
  void fahren() {
    print('Das Auto fährt');
  }

  void bremsen() {
    print('Das Auto bremst');
  }
}
