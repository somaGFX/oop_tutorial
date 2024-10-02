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

  factory V13Auto.fromMap(Map<String, dynamic> map) {
    return V13Auto(
      reifenZahl: map['reifenZahl'] as int,
      insasseZahl: map['insasseZahl'] as int,
      baujahr: DateTime.fromMillisecondsSinceEpoch(map['baujahr'] as int),
      reifenRadius: map['reifenRadius'] as double,
      reifenBreite: map['reifenBreite'] as double,
      marke: map['marke'] != null ? map['marke'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory V13Auto.fromJson(String source) {
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