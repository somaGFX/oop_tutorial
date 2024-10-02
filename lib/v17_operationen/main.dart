import 'package:oop_tutorial/v17_operationen/v17_auto.dart';

void main() {
  final auto = V17Auto.defaultAuto();
  final auto2 = V17Auto.defaultAuto();

  print(auto == auto2);
  final auto3 = auto;
  print(auto == auto3);
  final auto4 = auto3 + auto2;
  print(auto3.toString());
  print(auto4.toString());
  final auto5 = auto * 3;
  print(auto5.toString());
}
