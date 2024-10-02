import 'dart:convert';

import 'package:oop_tutorial/v15_json_with_list/v15_auto.dart';

void main() {
  // final auto = V15Auto.fromJson(v15AutoJsonElement);
  final List<V15Auto> autos = [];
  final jsonList = jsonDecode(v15AutoJsonfile);
  for (var element in jsonList) {
    autos.add(V15Auto.fromMap(element));
    print(autos.last.toString());
  }
  // print(auto.toJson());
}
