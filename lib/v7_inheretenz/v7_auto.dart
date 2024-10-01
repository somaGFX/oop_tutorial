import 'package:oop_tutorial/v7_inheretenz/v7_wagen.dart';

class AutoV7 extends Wagen {
  AutoV7({
     super.reifenZahl=4,
     super.maxInsasseZahl=5,
    required super.baujahr,
     super.reifenRadius=30,
     super.reifenBreite=22,
    required super.fahrer,
  }){
    print('AutoV7 created');
  }

}
