import 'package:oop_tutorial/v12_copy_with.dart/v12_auto.dart';
import 'package:oop_tutorial/v12_copy_with.dart/v12_immutable_auto.dart';

void main() {
  final auto = V12Auto(baujahr: DateTime(2022));
  auto.reifenZahl = 100;
  V12AutoImmutable newAutoState = V12AutoImmutable(baujahr: DateTime(2000));
  // newAutoState.baujahr = DateTime(2023);
  newAutoState = newAutoState.copyWith(reifenZahl: 100);
  auto.details();
  newAutoState.details();
}
