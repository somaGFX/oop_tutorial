import 'package:oop_tutorial/v10_mixin/mixin_maschinengewehr.dart';
import 'package:oop_tutorial/v10_mixin/mixin_rakete.dart';
import 'package:oop_tutorial/v10_mixin/v10_fahrzeug.dart';

// Eine Klasse kann mehrere Mixins haben
class KriegsMobil extends V10Fahrzeug with Rakete, Maschinengewehr {
  // Mixins haben zwar keine Konstruktoren, aber sie können Werte übergeben bekommen.
  // Durch diese Trick können wir die Werte an Mixin-Attribute durch die Klasse Konstruktor übergeben.
  KriegsMobil({
    required super.baujahr,
    required super.fahrer,
    required super.reifenZahl,
    required super.maxInsasseZahl,
    required super.reifenRadius,
    required super.reifenBreite,
    // Mixin-Attribute Vermittler
    int? rAnzahl,
    int? rGeschwindigkeit,
  }) {
    // Zuweisung von Werten zu Mixin-Attributen
    raketenAnzahl = rAnzahl ?? raketenAnzahl;
    geschwindigkeit = rGeschwindigkeit ?? geschwindigkeit;
  }
  @override
  void fahren() {
    print('KriegsMobil fährt');
  }
}
