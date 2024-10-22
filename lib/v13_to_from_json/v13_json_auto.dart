// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class V13Auto {
  int reifenZahl;
  int insasseZahl;
  DateTime baujahr;
  double reifenRadius;
  double reifenBreite;
  String? marke;
  V13Auto({
    required this.reifenZahl,
    required this.insasseZahl,
    required this.baujahr,
    required this.reifenRadius,
    required this.reifenBreite,
    this.marke,
  });
  factory V13Auto.defaultAuto() {
    return V13Auto(
      baujahr: DateTime(2020),
      reifenZahl: 4,
      insasseZahl: 5,
      reifenRadius: 30,
      reifenBreite: 20,
    );
  }

  V13Auto copyWith({
    int? reifenZahl,
    int? insasseZahl,
    DateTime? baujahr,
    double? reifenRadius,
    double? reifenBreite,
    String? marke,
  }) {
    return V13Auto(
      reifenZahl: reifenZahl ?? this.reifenZahl,
      insasseZahl: insasseZahl ?? this.insasseZahl,
      baujahr: baujahr ?? this.baujahr,
      reifenRadius: reifenRadius ?? this.reifenRadius,
      reifenBreite: reifenBreite ?? this.reifenBreite,
      marke: marke ?? this.marke,
    );
  }

  Map<String, dynamic> toMap() {
    // reifenZahl = reifenZahl == 4 ? reifenZahl : 4;
    // reifenRadius = reifenRadius>15 ? reifenRadius : 15;
    return <String, dynamic>{
      'reifenZahl': reifenZahl,
      'insasseZahl': insasseZahl,
      'baujahr': baujahr.millisecondsSinceEpoch,
      'reifenRadius': reifenRadius,
      'reifenBreite': reifenBreite,
      'marke': marke,
    };
  }
  // Ein Map<String,Dynamic> in ein V13Auto-Objekt umwandeln
  factory V13Auto.fromMap(Map<String, dynamic> map) {
    // Die Erzeugung des Objekts erfolgt mit den Werten aus der Map
    return V13Auto(
      // Der Wert von 'reifenZahl' wird aus der Map gelesen und in das Attribut 'reifenZahl' geschrieben
      // weil die Mappe dynamische Values hat, muss die Value mit 'as' gecastet werden
      reifenZahl: map['reifenZahl'] as int,
      insasseZahl: map['insasseZahl'] as int,
      // DateTime.fromMillisecondsSinceEpoch() erzeugt ein DateTime-Objekt aus Millisekunden
      // weile die DateTime-Objekte in der Mappe als int gespeichert sind, wird der Wert mit 'as' gecastet
      baujahr: DateTime.fromMillisecondsSinceEpoch(map['baujahr'] as int),
      reifenRadius: map['reifenRadius'] as double,
      reifenBreite: map['reifenBreite'] as double,
      // marke ist ein optionales Attribut, deshalb wird es mit einem ternären Operator gelesen
      marke: map['marke'] != null ? map['marke'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());
 
  factory V13Auto.fromJson(String source) {
    // Die Methode fromMap wird aufgerufen, um ein V13Auto-Objekt zu erzeugen
    // Die Methode json.decode() wandelt den JSON-String in eine Map<String, dynamic> um,
    // somit kann die Methode fromMap() es handeln
    return V13Auto.fromMap(json.decode(source) as Map<String, dynamic>);
  }

  @override
  String toString() {
    return '''
    V13Auto: 
    reifenZahl: $reifenZahl 
    insasseZahl: $insasseZahl 
    baujahr: $baujahr 
    reifenRadius: $reifenRadius 
    reifenBreite: $reifenBreite 
    marke: $marke
    ''';
  }

  // @override
  // bool operator ==(covariant V13Auto other) {
  //   if (identical(this, other)) return true;

  //   return
  //     other.reifenZahl == reifenZahl &&
  //     other.insasseZahl == insasseZahl &&
  //     other.baujahr == baujahr &&
  //     other.reifenRadius == reifenRadius &&
  //     other.reifenBreite == reifenBreite &&
  //     other.marke == marke;
  // }
}

String v13AutoJsonElement =
    '{"reifenZahl":40,"insasseZahl":5,"baujahr":1577833200000,"reifenRadius":30.0,"reifenBreite":20.0,"marke":"Auto1"}';
  // so sieht die JSON-Liste aus
String v13AutoJsonFile = '''
[
  {
    "reifenZahl": 4,
    "insasseZahl": 5,
    "baujahr": 1577833200000,
    "reifenRadius": 30.0,
    "reifenBreite": 20.0,
    "marke": "Auto1"
  },
  {
    "reifenZahl": 4,
    "insasseZahl": 5,
    "baujahr": 1577833200000,
    "reifenRadius": 30.0,
    "reifenBreite": 20.0,
    "marke": "Auto2"
  },
  {
    "reifenZahl": 4,
    "insasseZahl": 5,
    "baujahr": 1577833200000,
    "reifenRadius": 30.0,
    "reifenBreite": 20.0,
    "marke": "Auto3"
  }
]
''';