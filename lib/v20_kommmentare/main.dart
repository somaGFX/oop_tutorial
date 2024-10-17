import 'package:oop_tutorial/v20_kommmentare/kommentare.dart';

void main() {
  final auto = AutoV20(baujahr: DateTime(2020), reifenRadius: 30, reifenBreite: 22, fahrer: null, marke: 'BMW');
  auto.maxIinsasseZahl = 9;
  auto.reifenRadius = 25;
  auto.alter;
  auto.fahren();
}
