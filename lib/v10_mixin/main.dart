import 'package:oop_tutorial/v10_mixin/hause_bus.dart';
import 'package:oop_tutorial/v10_mixin/krieg_auto.dart';

void main() {
  // Beim Bau des KriegsMobil wird die mixins Attributen und Methoden in die Klasse KriegsMobil eingefügt.
  // Und kann direk durch das Objekt aufgerufen werden.
  final auto = KriegsMobil(
    baujahr: DateTime(2020),
    fahrer: null,
    reifenZahl: 4,
    maxInsasseZahl: 4,
    reifenRadius: 30,
    reifenBreite: 20,
  );
  final hauseBus = HuaseBus(
    baujahr: DateTime(2020),
  );
  auto.schiessen();
  auto.maschinengewehrSchiessen();
  print('Feuerrate: ${auto.feuerrate}');
  print('SchlafPlatzAnzahl ${hauseBus.schlafPlatzAnzahl}');
}
