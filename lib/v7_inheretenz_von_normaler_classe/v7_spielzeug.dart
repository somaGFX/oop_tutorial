import 'package:oop_tutorial/v7_inheretenz_von_normaler_classe/v7_Fahrzeug.dart';

class Spielzeug extends V7Fahrzeug {
  Spielzeug({
    int spielZeugReifenZahl = 4,
    required super.baujahr,
    super.reifenRadius = 2,
    super.reifenBreite = 1,
  }) : super(
          maxInsasseZahl: 0,
          reifenZahl: spielZeugReifenZahl,
          fahrer: null,
        );
  @override
  void fahren() {
    print('Spielzeug fährt');
  }
}
