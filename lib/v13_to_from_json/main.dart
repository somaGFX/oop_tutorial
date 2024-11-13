import 'dart:convert';

import 'package:oop_tutorial/v13_to_from_json/v13_json_auto.dart';

void main() {
  final auto = V13Auto;

  // Objekte List erstellen
  final List<V13Auto> autos = [];
  // JSON String in Map-Liste umwandeln
  final jsonList = jsonDecode(v13AutoJsonFile);
  // print(jsonList);
  // Map-Liste durchgehen
  for (var element in jsonList) {
  // Map in Objekt umwandeln und in die Liste einfügen
    autos.add(V13Auto.fromMap(element));
    // die eingefügten Objekte printen
    // print(autos.last.toString());
  }
  // print(jsonDecode(v13AutoJsonFile));

   print(autos);
}
