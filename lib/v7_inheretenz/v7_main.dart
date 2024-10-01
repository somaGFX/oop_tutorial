import 'package:oop_tutorial/v5_aggregation.dart/v5_fahrer.dart';
import 'package:oop_tutorial/v7_inheretenz/v7_auto.dart';

void main() {
  final auto = AutoV7(
    baujahr: DateTime(2020),
    fahrer: Fahrer(
      vorname: 'Max',
      nachname: 'Mustermann',
      alter: 30,
    ),
  );
  auto.details();
}
