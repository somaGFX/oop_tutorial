import 'dart:convert';
import 'package:oop_tutorial/v14_json_with_object/v14_auto.dart';

void main() {
  final auto2 = V14Auto.fromJson(v14AutoJsonElement);
  print(auto2.toJson());
  final List<V14Auto> autos = [];
  final jsonList = jsonDecode(v14AutoJsonFile);
  for (var element in jsonList) {
    autos.add(V14Auto.fromMap(element));
    print(autos.last.toString());
  }
  print(autos.length);
}
