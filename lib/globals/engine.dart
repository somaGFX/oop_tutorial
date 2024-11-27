import 'dart:convert';

class Engine {
  String energieType;
  int leistung;
  int zylinderAnzahl;
  int maxGeschwindigkeit;
  Engine({
    required this.energieType,
    required this.leistung,
    required this.zylinderAnzahl,
    required this.maxGeschwindigkeit,
  });
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'energieType': energieType,
      'leistung': leistung,
      'zylinderAnzahl': zylinderAnzahl,
      'maxGeschwindigkeit': maxGeschwindigkeit,
    };
  }

  factory Engine.fromMap(Map<String, dynamic> jsonMap) {
    return Engine(
      energieType: jsonMap['energieType'] as String,
      leistung: jsonMap['leistung'] as int,
      zylinderAnzahl: jsonMap['zylinderAnzahl'] as int,
      maxGeschwindigkeit: jsonMap['maxGeschwindigkeit'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Engine.fromJson(String json) {
    final Map<String, dynamic> jsonMap = jsonDecode(json);
    return Engine.fromMap(jsonMap);
  }
  
  String details() {
    return '''

    Engine Details:
    Energie Type: $energieType
    Leistung: $leistung
    Zylinder Anzahl: $zylinderAnzahl
    Max Geschwindigkeit: $maxGeschwindigkeit
    ''';
  }
}
