import 'dart:math';

import 'package:oop_tutorial/v18_extensions/list_austausch_extension.dart';

void main() {
  //  print(dynamicList.addieren()) // Error: The method 'addieren' isn't defined for the class 'List<dynamic>'.
  final List<int> numbers = [2, 6, 9, 4, 11, 66, 9, 44];
  print(numbers); // [2, 6, 9, 4, 11, 66, 9, 44]
  numbers.indexTauschen(1, 5);
  print(numbers); // [2, 66, 9, 4, 11, 6, 9, 44]
  numbers.wertTaushen(6, 66);
  print(numbers); // [2, 6, 9, 4, 11, 66, 9, 44]
  print(numbers.addieren());
  List dynamicList = [2, 6, 9, 4];
  print(dynamicList); // [2, 6, 9, 4]
  dynamicList = dynamicList / 2;
  print(
      dynamicList); // [2, 6] beim Dynamischen Typen wird die Liste sich selbst geteilt, und nicht die Werte ihrer Elemente.
  dynamicList = dynamicList * 3;
  print(dynamicList); // [2, 6, 2, 6, 2, 6]. Die Liste wird sich selbst je nach der Factor verdooppelt.
  List<int> intList = [2, 6];
  intList = intList * 2;
  print(intList); // [4, 12]
  intList = intList / 4;
  print(intList); // [1, 3]
  intList.add(100);
  print(intList);
  // intList=intList+100; // Error: The operator '+' kann nicht auf den Typ 'List<int>' und 'int' angewendet werden.
  // Die Überschreibung des Operators '+' ist nicht überschreibbar.
  intList = intList + [100]; // [1, 3, 100,100]
  print(intList); // [4, 12, 100,100] List hat bereits ein + Operator, der zwei Listen zusammenfügt.
}
// bei der dynamicList wird die Liste sich selbst geteilt oder multipliziert, und nicht die Werte ihrer Elemente. 
// hingegen bei der intList wird die Werte ihrer Elemente geteilt oder multipliziert.
