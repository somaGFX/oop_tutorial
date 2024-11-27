import 'package:oop_tutorial/globals/energie_enum.dart';
import 'package:oop_tutorial/globals/v5_fahrt.dart';

import 'package:oop_tutorial/v7_inheretenz_von_normaler_classe/v7_Fahrzeug.dart';

class LKW extends V7Fahrzeug {
  int maxLast;
  LKW({
    required this.maxLast,
    super.reifenZahl = 8,
    super.maxInsasseZahl = 3,
    required super.baujahr,
    super.reifenRadius = 50,
    super.reifenBreite = 30,
    required super.fahrer,
    super.energieType = EnergieType.diesel,
  });
  @override
  void fahren() {
    super.fahren();
       if (fahrer == null) return;
    final fahrt = Fahrt(start: DateTime.now(), fahrer: fahrer!, fahrzeug: this);
    // diese Nethode bewertet die Fahrtsicherheit je nach Fahrer.
    print('LKW fährt');
    fahrt.sicherheitsniveau();
  }

  void beladen() {
    print('LKW kann nicht beladen werden');
  }

  void entladen() {
    print('LKW kann nicht entladen werden');
  }

  @override
  void details() {
    super.details();
    print('Max Last: $maxLast');
  }
}
