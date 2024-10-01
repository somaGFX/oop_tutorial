import 'package:oop_tutorial/v9_implementierung/v9_auto.dart';
import 'package:oop_tutorial/v9_implementierung/v9_auto_implement_abstract_fahrzeug.dart';

void main() {
  final auto = AutoV9(baujahr: DateTime(2020));
  final auto2 = AutoV9Abs(baujahr: DateTime(1999));
  auto.details();
  auto2.details();
}
