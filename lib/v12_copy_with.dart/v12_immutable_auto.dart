
class V12AutoImmutable {
  // Die alle Attribute sind final
 final int reifenZahl;
 final int insasseZahl;
 final DateTime baujahr;
  // 28 => 38
 final double reifenRadius;
  // 18 => 25
 final double reifenBreite;
 final String? marke;
 // Konstruktor ist immutable (const).
 const V12AutoImmutable({
    this.reifenZahl = 4,
    this.insasseZahl = 5,
    required this.baujahr,
    this.reifenRadius = 30,
    this.reifenBreite = 20,
    this.marke,
  });
// CopyWith definition
// Named Parameter
 V12AutoImmutable copyWith({
  // Alle Attribute sind nullable
  // Baujahr ist entfernt, weil es darf logischerweise nicht geändert werden.
    int? reifenZahl,
    int? insasseZahl,
    double? reifenRadius,
    double? reifenBreite,
    String? marke,
  }) {
    return V12AutoImmutable(
      // Wenn der Wert null ist, wird der aktuelle Wert verwendet.
      reifenZahl: reifenZahl ?? this.reifenZahl,
      insasseZahl: insasseZahl ?? this.insasseZahl,
      // baujahr ist nicht veränderbar( haltet ihre Wert zu)
      baujahr:  baujahr,
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
