import 'dart:convert';

import 'package:oop_tutorial/v16_json_with_list_objekt/v16_auto.dart';

void main() {
  final auto = V16Auto.fromJson(v16AutoJsonElement);
  print(auto.toString());
  final List<V16Auto> autos = [];
  final jsonList = jsonDecode(v16AutoJsonFile);
  for (var element in jsonList) {
    autos.add(V16Auto.fromMap(element));
    print(autos.last.toString());
  }
  print('Autosanzahl ${autos.length}');
}
