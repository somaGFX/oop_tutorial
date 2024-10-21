import 'package:oop_tutorial/v10_mixin/mixin_maschinengewehr.dart';
import 'package:oop_tutorial/v10_mixin/mixin_rakete.dart';
import 'package:oop_tutorial/v10_mixin/v10_fahrzeug.dart';

class KriegsMobil extends V10Fahrzeug with Rakete, Maschinengewehr {
  KriegsMobil({
    required super.baujahr,
    required super.fahrer,
    required super.reifenZahl,
    required super.maxInsasseZahl,
    required super.reifenRadius,
    required super.reifenBreite,
  });
  @override
  void fahren() {
    super.fahren();
    print('KriegAuto fährt');
  }
}


