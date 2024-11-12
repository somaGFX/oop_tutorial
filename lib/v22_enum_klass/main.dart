import 'package:oop_tutorial/v22_enum_klass/enumKlass.dart';

void main() {

  final auto = FahrzeugEnum.auto;
  final flexibleAuto = FahrzeugEnum.flexiibleAuto(name: 'BMW', geschwindigkeit: 320, sitzplaetze: 5);
  print(flexibleAuto.info); // FahrzeugEnum: name: BMW, Geschwindigkeit: 220
}
