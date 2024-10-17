import 'package:oop_tutorial/v12_copy_with.dart/v12_auto.dart';
import 'package:oop_tutorial/v12_copy_with.dart/v12_immutable_auto.dart';

void main() {
  final auto = V12Auto(baujahr: DateTime(3022));
  auto.reifenZahl = 100;
  V12AutoImmutable auto2 = V12AutoImmutable(baujahr: DateTime(3022));
//  auto2.refenZahl=100;
  auto2 = auto2.copyWith(reifenZahl: 100);
  auto.details();
  final auto3 = auto2.copyWith(reifenZahl: 3);
  auto3.details();
}
