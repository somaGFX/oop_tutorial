import 'package:oop_tutorial/v4_kapselung/v4_kapselung.dart';

void main() {
  final auto = AutoV4(baujahr: DateTime(2020), marke: 'Mercedes', reifenRadius: 28, reifenBreite: 18, fahrer: 'Max');
  auto.marke = 'Mercedes';
  auto.maxIinsasseZahl = 100; // 8
  // print(auto.gruessen);
  // auto._maxInsasseZahl = -3; // Fehler weil _minIinsasseZahl ist private und kann nicht geändert werden
  // print(auto._minIinsasseZahl); // Fehler weil _minIinsasseZahl ist private und kann nicht gelesen werden
  // print(auto.baujahr); // 2020 _baujahr Attribute hat einen Bauejahr Getter
  // auto.details();
  auto.unfall(1); // 3 Reifenanzahl hat sich wegen Umfall geändert.
  auto.details();
}
