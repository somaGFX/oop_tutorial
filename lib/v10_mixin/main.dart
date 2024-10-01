import 'package:oop_tutorial/v10_mixin/krieg_auto.dart';

void main() {
  final auto = KriegAuto(
    baujahr: DateTime(2020),
    fahrer: null,
    reifenZahl: 4,
    maxInsasseZahl: 4,
    reifenRadius: 30,
    reifenBreite: 20,
  );
  auto.schissen();
}
