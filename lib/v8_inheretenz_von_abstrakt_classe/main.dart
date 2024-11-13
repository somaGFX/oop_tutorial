import 'package:oop_tutorial/v8_inheretenz_von_abstrakt_classe/v8_auto.dart';
import 'package:oop_tutorial/v8_inheretenz_von_abstrakt_classe/v8_fahrzeug.dart';

void main() {
  // final fahrzeug=V8Fahrzeug(baujahr: DateTime(2020), fahrer: null); // Error: The class 'V8Fahrzeug' is abstract and can't be instantiated.
  final auto =
      AutoV8(baujahr: DateTime(2000), fahrer: null);
  auto.fahren();
}
