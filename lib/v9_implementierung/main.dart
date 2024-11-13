import 'package:oop_tutorial/v9_implementierung/v9_auto.dart';
import 'package:oop_tutorial/v9_implementierung/v9_auto_implement_abstract_fahrzeug.dart';
import 'package:oop_tutorial/v9_implementierung/v9_fahrzueg.dart';

void main() {
  final fahzeug = V9Fahrzeug(
      reifenZahl: 4,
      maxInsasseZahl: 5,
      baujahr: DateTime(2020),
      reifenRadius: 30,
      reifenBreite: 20);
  final auto = AutoV9(baujahr: DateTime(2020));
  final auto2 = AutoV9Abs(baujahr: DateTime(1999));

}


