import 'package:oop_tutorial/generals/energie_enum.dart';
import 'package:oop_tutorial/generals/v5_fahrer.dart';

import 'package:oop_tutorial/v7_inheretenz_von_normaler_classe/v7_Fahrzeug.dart';

class BusV7 extends V7Fahrzeug {
  // subklassen können eigene Attribute haben.
  bool doppelteEtage;

  // Der Bau von Unter Klasse Konstruktor hat viele Formen.
  // eine ist beim Nutzen von Vermittler Attributen im Konstruktor, und zur Superklasse zuweisen.
  BusV7({
    // hier haben wir This benutzt, weil wir auf die eigene Attribute zugreifen.
    this.doppelteEtage = false,
    // hier sind die Vermittleten Attribute definiert.
    int reifenZahl = 6,
    int maxInsasseZahl = 30,
    required DateTime baujahr,
    double reifenRadius = 45,
    double reifenBreite = 30,
    required Fahrer? fahrer,
    EnergieType energieType = EnergieType.diesel,
  }) : super(
    // hier sind die Vermittleten Attribute zur Superklasse zugewiesen.
          reifenZahl: reifenZahl,
          maxInsasseZahl: maxInsasseZahl,
          baujahr: baujahr,
          reifenRadius: reifenRadius,
          reifenBreite: reifenBreite,
          fahrer: fahrer,
          energieType: energieType,
        );

        // überschreiben der Methode der Oberklasse.
  @override
  void fahren() {
super.fahren();
    print('Bus fährt');
  }
}
