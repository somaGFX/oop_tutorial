import 'package:oop_tutorial/v17_operationen/union.dart';

class Land {
  int einwohnerAnzahl;
  double flaeche;

  Land({required this.einwohnerAnzahl, required this.flaeche});

  // Überschreibe den + Operator
  Land operator +(Land other) {
    return Land(
      einwohnerAnzahl: this.einwohnerAnzahl + other.einwohnerAnzahl,
      flaeche: this.flaeche + other.flaeche,
    );
  }

  // beim Multiplizieren von zwei Ländern wird ein Union erstellt
  Union operator *(Land other) {
    return Union(laender: [this, other]);
  }

  @override
  String toString() {
    return 'Land: Einwohner: $einwohnerAnzahl, Fläche: $flaeche km²';
  }
}


