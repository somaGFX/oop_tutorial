import 'dart:math';

import 'package:oop_tutorial/globals/autos_marken.dart';
import 'package:oop_tutorial/globals/energie_enum.dart';
import 'package:oop_tutorial/globals/engine.dart';
import 'package:oop_tutorial/v11_factory/v11_auto.dart';

void main() {
  final engine =
      Engine(energieType: EnergieType.benzine.lable, leistung: 200, zylinderAnzahl: 6, maxGeschwindigkeit: 220);
  final auto = V11Auto(baujahr: DateTime(2022), engine: engine);
  // so wird das Objekt mittels Factory erstellt.
  final auto2 = V11Auto.fromMarke(Marken.audiA8.label);
  final audiAuat = V11Auto.audiA8();
  final auto3 = V11Auto.defaultAuto();
  auto.details();
  auto2.details();
  auto3.details();
  final random = Random().nextDouble()*10;
  print(random);
}
