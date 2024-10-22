// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


class V15Auto {
  int insasseZahl;
  DateTime baujahr;
  List<String> reifen;
  String? marke;
  V15Auto({
    required this.insasseZahl,
    required this.baujahr,
    required this.reifen,
    this.marke,
  });

  V15Auto copyWith({
    int? insasseZahl,
    DateTime? baujahr,
    List<String>? reifen,
    String? marke,
  }) {
    return V15Auto(
      insasseZahl: insasseZahl ?? this.insasseZahl,
      baujahr: baujahr ?? this.baujahr,
      reifen: reifen ?? this.reifen,
      marke: marke ?? this.marke,
    );
  }
  factory V15Auto.defaultAuto() {
    return V15Auto(
      
      insasseZahl: 5,
      baujahr: DateTime(2020),
      reifen: ['front-left', 'front-right', 'rear-left', 'rear-right'],
      marke: 'Auto1',
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insasseZahl': insasseZahl,
      'baujahr': baujahr.millisecondsSinceEpoch,
      'reifen': reifen,
      'marke': marke,
    };
  }

  factory V15Auto.fromMap(Map<String, dynamic> map) {
    return V15Auto(
      insasseZahl: map['insasseZahl'] as int,
      baujahr: DateTime.fromMillisecondsSinceEpoch(map['baujahr'] as int),
      // Die Reifen sind eine simple Liste von Strings, daher brauchen wir keine spezielle Methode.
      reifen: List<String>.from(map['reifen'] as List),
      marke: map['marke'] as String?,
    );
  }
  // Die String, dynamische Mappe wird als JSON-codiertes Objekt zurückgegeben.
  String toJson() => json.encode(toMap());

  factory V15Auto.fromJson(String source) => V15Auto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'V15Auto(insasseZahl: $insasseZahl, baujahr: $baujahr, reifen: $reifen, marke: $marke)';
  }

 
}
// so Sieht das JSON-Objekt aus
final v15AutoJsonElement ='{"insasseZahl":5,"baujahr":1577833200000,"reifen":["front-left","front-right","rear-left","rear-right"],"marke":"Auto1"}';

final v15AutoJsonfile='''
[
  {
    "insasseZahl": 5,
    "baujahr": 1577833200000,
    "reifen": ["front-left", "front-right", "rear-left", "rear-right"],
    "marke": "Auto1"
  },
  {
    "insasseZahl": 5,
    "baujahr": 1577833200000,
    "reifen": ["front-left", "front-right", "rear-left", "rear-right"],
    "marke": "Auto2"
  },
  {
    "insasseZahl": 5,
    "baujahr": 1577833200000,
    "reifen": ["front-left", "front-right", "rear-left", "rear-right"],
    "marke": "Auto3"
  }
]
''';