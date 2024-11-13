import 'package:oop_tutorial/v22_enum_klass/enumKlass.dart';
import 'package:oop_tutorial/v22_enum_klass/enum_mit_string_elemente.dart';

void main() {
  final autoEnum = AutoMitEnum(EnginEnum.benzin, 'Bmw');
  // final String motorEnum = autoEnum.motor.toString(); // Error: A value of type 'EnginEnum' can't be assigned to a variable of type 'String'.
  final autoStringEnum = AutoMitStringEnum(EnginEnumMitStringElemente.benzin, 'Bmw');
  final String motorType = autoStringEnum.motor.lable; // Ok: Diese Enum hat ein String-Label.
  final auto = FahrzeugEnum.auto; // Direkter aus Enum kann man nur den Enum-Elemente bekommen.
   print(auto.info);
  // Durch Static Methode und erweiterte Klasse kann man ein Objekt erstellen.
  final flexibleAuto = FahrzeugEnum.flexiibleAuto(name: 'BMW', geschwindigkeit: 320, sitzplaetze: 5) as FlexibleAuto;
  print(flexibleAuto.info);
}
