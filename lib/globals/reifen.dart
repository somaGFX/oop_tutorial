// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';



class Reifen {
  String position;
  double radius;
  double breite;
  Reifen({
    required this.position,
    required this.radius,
    required this.breite,
  });
  

  Reifen copyWith({
    String? position,
    double? radius,
    double? breite,
  }) {
    return Reifen(
      position: position ?? this.position,
      radius: radius ?? this.radius,
      breite: breite ?? this.breite,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'position': position,
      'radius': radius,
      'breite': breite,
    };
  }

  factory Reifen.fromMap(Map<String, dynamic> map) {
    return Reifen(
      position: map['position'] as String,
      radius: map['radius'] as double,
      breite: map['breite'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Reifen.fromJson(String source) => Reifen.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'reifen(position: $position, radius: $radius, breite: $breite)';

}
