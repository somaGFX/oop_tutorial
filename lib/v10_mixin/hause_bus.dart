import 'package:oop_tutorial/v10_mixin/mixin_mobilhause.dart';
import 'package:oop_tutorial/v10_mixin/v10_fahrzeug.dart';

class HuaseBus extends V10Fahrzeug with MobilHaus{
  HuaseBus({
     super.reifenZahl=6,
     super.maxInsasseZahl=10,
    required super.baujahr,
     super.reifenRadius=45,
     super.reifenBreite=30,
  });
  @override
  void fahren() {
    super.fahren();
    print('HauseBus fährt');
  }
}