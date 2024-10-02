// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:oop_tutorial/generals/engine.dart';

class V14Auto {
  int reifenZahl;
  int insasseZahl;
  DateTime baujahr;
  double reifenRadius;
  double reifenBreite;
  String? marke;
  Engine engine;
  V14Auto({
    required this.reifenZahl,
    required this.insasseZahl,
    required this.baujahr,
    required this.reifenRadius,
    required this.reifenBreite,
    this.marke,
    required this.engine,
  });
  factory V14Auto.defaultAuto() {
    return V14Auto(
      baujahr: DateTime(2020),
      reifenZahl: 4,
      insasseZahl: 5,
      reifenRadius: 30,
      reifenBreite: 20,
      engine: Engine(
        energieType: 'benzine',
        leistung: 200,
        zylinderAnzahl: 6,
        maxGeschwindigkeit: 220,
      ),
    );
  }

  V14Auto copyWith({
    int? reifenZahl,
    int? insasseZahl,
    DateTime? baujahr,
    double? reifenRadius,
    double? reifenBreite,
    String? marke,
    Engine? engine,
  }) {
    return V14Auto(
      reifenZahl: reifenZahl ?? this.reifenZahl,
      insasseZahl: insasseZahl ?? this.insasseZahl,
      baujahr: baujahr ?? this.baujahr,
      reifenRadius: reifenRadius ?? this.reifenRadius,
      reifenBreite: reifenBreite ?? this.reifenBreite,
      marke: marke ?? this.marke,
      engine: engine ?? this.engine,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reifenZahl': reifenZahl,
      'insasseZahl': insasseZahl,
      'baujahr': baujahr.millisecondsSinceEpoch,
      'reifenRadius': reifenRadius,
      'reifenBreite': reifenBreite,
      'marke': marke,
      'engine': engine.toMap(),
    };
  }

  factory V14Auto.fromMap(Map<String, dynamic> map) {
    return V14Auto(
      reifenZahl: map['reifenZahl'] as int,
      insasseZahl: map['insasseZahl'] as int,
      baujahr: DateTime.fromMillisecondsSinceEpoch(map['baujahr'] as int),
      reifenRadius: map['reifenRadius'] as double,
      reifenBreite: map['reifenBreite'] as double,
      marke: map['marke'] != null ? map['marke'] as String : null,
      engine: Engine.fromMap(map['engine'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory V14Auto.fromJson(String source) => V14Auto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'V13Auto(reifenZahl: $reifenZahl, insasseZahl: $insasseZahl, baujahr: $baujahr, reifenRadius: $reifenRadius, reifenBreite: $reifenBreite, marke: $marke, engine: $engine)';
  }
}

final v14AutoJsonElement =
    '{"reifenZahl":4,"insasseZahl":5,"baujahr":1577833200000,"reifenRadius":30.0,"reifenBreite":20.0,"marke":"Auto1","engine":{"energieType":"benzine","leistung":200,"zylinderAnzahl":6,"maxGeschwindigkeit":220}}';

final v14AutoJsonFile='''
[
  {
    "reifenZahl": 4,
    "insasseZahl": 5,
    "baujahr": 1577833200000,
    "reifenRadius": 30.0,
    "reifenBreite": 20.0,
    "marke": "Auto1",
    "engine": {
      "energieType": "benzine",
      "leistung": 200,
      "zylinderAnzahl": 6,
      "maxGeschwindigkeit": 220
    }
  },
  {
    "reifenZahl": 4,
    "insasseZahl": 5,
    "baujahr": 1577833200000,
    "reifenRadius": 30.0,
    "reifenBreite": 20.0,
    "marke": "Auto2",
    "engine": {
      "energieType": "benzine",
      "leistung": 200,
      "zylinderAnzahl": 6,
      "maxGeschwindigkeit": 220
    }
  },
  {
    "reifenZahl": 4,
    "insasseZahl": 5,
    "baujahr": 1577833200000,
    "reifenRadius": 30.0,
    "reifenBreite": 20.0,
    "marke": "Auto3",
    "engine": {
      "energieType": "benzine",
      "leistung": 200,
      "zylinderAnzahl": 6,
      "maxGeschwindigkeit": 220
    }
  }
]
''';