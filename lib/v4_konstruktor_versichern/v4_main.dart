import 'package:oop_tutorial/v4_konstruktor_versichern/v4_konstruktor_versichern.dart';

void main() {
  final auto = AutoV4(baujahr: DateTime(2020), marke: 'Mercedes', reifenRadius: 28, reifenBreite: 18,fahrer: 'Max');
  auto.marke = 'Mercedes';
  auto.maxIinsasseZahl = 10;
  // auto._minIinsasseZahl = 3;
  // print(auto._minIinsasseZahl);
  print(auto.baujahr);
  auto.details();
  auto.umfall(1);
  auto.details();
}
