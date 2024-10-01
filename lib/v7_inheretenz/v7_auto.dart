import 'package:oop_tutorial/v7_inheretenz/v7_Fahrzeug.dart';

class AutoV7 extends Fahrzeug {
  AutoV7({
    super.reifenZahl = 4,
    super.maxInsasseZahl = 5,
    required super.baujahr,
    super.reifenRadius = 30,
    super.reifenBreite = 22,
    required super.fahrer,
  });
  @override
  void fahren() {
    super.fahren();
    print('AutoV7 fährt');
  }
}
