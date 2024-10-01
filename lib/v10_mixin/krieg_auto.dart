import 'package:oop_tutorial/v10_mixin/mixin_rakete.dart';
import 'package:oop_tutorial/v10_mixin/v10_fahrzeug.dart';

class KriegAuto extends V10Fahrzeug with Rakete {
  KriegAuto({
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
