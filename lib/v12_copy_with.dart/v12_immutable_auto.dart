




class V12AutoImmutable {
 final int reifenZahl;
 final int insasseZahl;
 final DateTime baujahr;
  // 28 => 38
 final double reifenRadius;
  // 18 => 25
 final double reifenBreite;
 final String? marke;
 const V12AutoImmutable({
    this.reifenZahl = 4,
    this.insasseZahl = 5,
    required this.baujahr,
    this.reifenRadius = 30,
    this.reifenBreite = 20,
    this.marke,
  });

 V12AutoImmutable copyWith({
    int? reifenZahl,
    int? insasseZahl,
    DateTime? baujahr,
    double? reifenRadius,
    double? reifenBreite,
    String? marke,
  }) {
    return V12AutoImmutable(
      reifenZahl: reifenZahl ?? this.reifenZahl,
      insasseZahl: insasseZahl ?? this.insasseZahl,
      baujahr: baujahr ?? this.baujahr,
      reifenRadius: reifenRadius ?? this.reifenRadius,
      reifenBreite: reifenBreite ?? this.reifenBreite,
      marke: marke ?? this.marke,
    );
  }
  void details() {
    print('''
    Fahrzeug Details:
    Reifen Zahl: $reifenZahl
    Max Insasse Zahl: $insasseZahl
    Baujahr: $baujahr
    Reifen Radius: $reifenRadius
    Reifen Breite: $reifenBreite
    Marke: $marke
    ''');
  }
}
