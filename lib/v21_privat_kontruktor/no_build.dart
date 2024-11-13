// wir können den Konstruktor auch als privat deklarieren
// In Diesem funktioniert die Klasse wie ein enum
// wir brauchen keine Instanz von der Klasse zu erstellen
class Farben {
  Farben._();
  // Die Farben kann aus der Klasse direkt zugegriffen werden
  static const String rot = 'rote';
  static const String gruen = 'grüne';
  static const String blau = 'blaue';
  static const String gelb = 'gelbe';
  static const String schwarz = 'schwarze';
  static const String weiss = 'weiße';
}
