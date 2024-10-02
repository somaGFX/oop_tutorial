import 'package:oop_tutorial/v8_inheretenz_von_abstrakt_classe/v8_auto.dart';

void main() {
  final fahrzeug =
      AutoV8(baujahr: DateTime(2000), fahrer: null);
  fahrzeug.fahren();
}
