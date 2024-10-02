class V17Auto {
  int maxGeschwindigkeit;
  int maxLeistung;
  int maxInsasssenAnzahl;
  V17Auto({
    required this.maxGeschwindigkeit,
    required this.maxLeistung,
    required this.maxInsasssenAnzahl,
  });

  factory V17Auto.defaultAuto() {
    return V17Auto(
      maxGeschwindigkeit: 200,
      maxLeistung: 100,
      maxInsasssenAnzahl: 5,
    );
  }

  @override
  String toString() =>
      'V17Auto(maxGeschwindigkeit: $maxGeschwindigkeit, maxLeistung: $maxLeistung, maxInsasssenAnzahl: $maxInsasssenAnzahl)';

  @override
  bool operator ==(covariant V17Auto other) {
    if (identical(this, other)) {
      print('identical');
      return true;
    }
    print('not identical');
    return other.maxGeschwindigkeit == maxGeschwindigkeit &&
        other.maxLeistung == maxLeistung &&
        other.maxInsasssenAnzahl == maxInsasssenAnzahl;
  }

  @override
  int get hashCode => maxGeschwindigkeit.hashCode ^ maxLeistung.hashCode ^ maxInsasssenAnzahl.hashCode;

  V17Auto operator +(V17Auto other) {
    return V17Auto(
      maxGeschwindigkeit: maxGeschwindigkeit + other.maxGeschwindigkeit,
      maxLeistung: maxLeistung + other.maxLeistung,
      maxInsasssenAnzahl: maxInsasssenAnzahl + other.maxInsasssenAnzahl,
    );
  }

  V17Auto operator *(int factor) {
    return V17Auto(
      maxGeschwindigkeit: maxGeschwindigkeit * factor,
      maxLeistung: maxLeistung * factor,
      maxInsasssenAnzahl: maxInsasssenAnzahl * factor,
    );
  }
}
