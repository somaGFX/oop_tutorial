import 'package:oop_tutorial/v7_inheretenz_von_normaler_classe/v7_Fahrzeug.dart';


class AutoV7 extends V7Fahrzeug {
  // Diese Klasse hat keine eigene Attribute, daher kann nicht (This) benutzt werden.
  // Daher wird Super benutzt um auf die Oberklasse zuzugreifen.
  //Der wirklche Bau der Klasse wird in der Oberklasse gemacht.

  // Der Bau von Unter Klasse Konstruktor hat viele Formen.
  // eine davon ist die Verwendung von (super) Schlüsselwort anstatt von (this) Schlüsselwort.
  AutoV7({
    super.reifenZahl = 4,
    super.maxInsasseZahl = 5,
    required super.baujahr,
    super.reifenRadius = 30,
    super.reifenBreite = 22,
    required super.fahrer,
  });

  // die alle Methoden in Oberklasse sind für Unterklasse verfügbar.
  // die geerbten Methoden können überschrieben werden.
  @override
  void fahren() {
    // innerhalb der Methode der Unterklasse kann die Methode der Oberklasse aufgerufen werden.
    super.fahren();
    print('AutoV7 fährt');
  }
}
