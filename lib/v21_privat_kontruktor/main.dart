import 'package:oop_tutorial/v21_privat_kontruktor/gerichtet_build__durch_factory.dart';
import 'package:oop_tutorial/v21_privat_kontruktor/gerichtet_build_durch_unter_klass.dart';
import 'package:oop_tutorial/v21_privat_kontruktor/no_build.dart';

void main() {
  // final farben = Farben();// Fehler: The constructor isn't available
  final farbe = Farben.blau; // OK: die static Attribute sind verfügbar

  print(farbe);
  // final fahrzeug = Fahrzeug('BMW', 200); // Fehler: The constructor isn't available
  // final Fahrzeug auto = _Auto('BMW', 200);// Fehler: Private Klassen können nicht direkt instanziiert werden

  final auto = FahrzeugGerichtetBeiUnterKlassen.auto(
    name: 'BMW',
    geschwindigkeit: 200,
  );
  // print(auto.info); // Fehler: The getter 'info' isn't defined for the class 'FahrzeugGerichtetBeiUnterKlassen'.
   auto.fahren(); // OK: die Methode fahren() ist verfügbar, es ist in Super Klasse definiert
  final bus = FahrzeugGerichtetBeiUnterKlassen.buss(name: 'Mazedis', geschwindigkeit: 180, sitzplaetze: 50);
  // print(bus.sitzplaetze); // Fehler: The Attribute 'sitzplaetze' isn't defined for the class 'FahrzeugGerichtetBeiUnterKlassen'.
  // print((bus as _Bus).sitzplaetze); // Fehler: _Bus ist private Klasse.

  final publicBus = FahrzeugGerichtetBeiUnterKlassen.publischBus(name: 'Mazedis', geschwindigkeit: 180, sitzplaetze: 50);
  print((publicBus as Bus).sitzplaetze); // OK: die Attribute sitzplaetze ist in der Klasse Bus definiert und die Klasse Bus ist public.

  final autoWithFactorie = FahrzeugGerichtetBeiFactorie.auto(name: 'BMW', geschwindigkeit: 220);
  autoWithFactorie.fahren(); // diese Methode ist durch die Typen spezifiziert
  autoWithFactorie.bremsen(); // diese Methode ist für alle Typen gleich
  print(autoWithFactorie.info); // die getters und Methoden sind für alle Typen zugänglich
}
