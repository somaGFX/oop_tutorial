
import 'package:oop_tutorial/v8_inheretenz_von_abstrakt_classe/v8_fahrzeug.dart';

class AutoV8 extends V8Fahrzeug {
  AutoV8({
    super.reifenZahl = 4,
    super.maxInsasseZahl = 5,
    required super.baujahr,
    super.reifenRadius = 30,
    super.reifenBreite = 22,
    required super.fahrer,
  });
  @override
  void fahren() {
   if(fahrer == null){
     print('AutoV8 kann nicht fahren, weil kein Fahrer da ist');
     return;    }
    print('AutoV7 fährt');
  }
  @override
  void umfall(int reifenAnzahl ){
    print('AutoV8 ist umgefallen');
  }
  

}
