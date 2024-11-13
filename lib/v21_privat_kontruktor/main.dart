import 'package:oop_tutorial/v21_privat_kontruktor/gerichtet_build__durch_factory.dart';
import 'package:oop_tutorial/v21_privat_kontruktor/gerichtet_build_durch_unter_klass.dart';
import 'package:oop_tutorial/v21_privat_kontruktor/no_build.dart';

void main() {
  // final farben = Farben();// Fehler: The constructor isn't available
  final farbe = Farben.blau; // OK: die static Attribute sind verfügbar

  print(farbe);
  // final fahrzeug = FahrzeugGerichtetBeiFactorie('BMW', 200); // Fehler: The constructor isn't available
  // final  auto = Auto('BMW', 200);// Fehler: The constructor isn't available

  final auto = FahrzeugGerichtetBeiUnterKlassen.auto(
    name: 'BMW',
    geschwindigkeit: 200,
  ) as Auto; // as Auto ist notwendig, um die Attributen und Methoden von Auto Klasse zu benutzen.
  // anders wird das Auto-Objekt als FahrzeugGerichtetBeiUnterKlassen Typen betrachtet.
  // somit sind die Attribute und Methoden von Auto Klasse nicht verfügbar.
  print(auto.info);
  auto.fahren(); // OK: die Methode fahren() ist verfügbar, es ist in Super Klasse definiert
  final bus = FahrzeugGerichtetBeiUnterKlassen.bus(name: 'Mazedis', geschwindigkeit: 180, sitzplaetze: 50) as Bus;
  bus.sitzplaetze++; // Attributen in Tochter klasse sind verfügbar, weil bus als Bus Typen betrachtet wird.

  final publicBus = FahrzeugGerichtetBeiUnterKlassen.bus(name: 'Mazedis', geschwindigkeit: 180, sitzplaetze: 50);
  print(
      'Sitzplatz ${(publicBus as Bus).sitzplaetze}'); // OK: die Attribute sitzplaetze ist in der Klasse Bus definiert und die Klasse Bus ist public.

//##########################FahrzeugGerichtetBeiFactorie############################################################
  final autoWithFactorie = FahrzeugGerichtetBeiFactorie.auto(name: 'BMW', geschwindigkeit: 220);
  autoWithFactorie.fahren(); // diese Methode ist durch die Typen spezifiziert
  autoWithFactorie.bremsen(); // diese Methode ist für alle Typen gleich
  print(autoWithFactorie.info); // die getters und Methoden sind für alle Typen zugänglich
}
