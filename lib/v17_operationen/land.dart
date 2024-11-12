import 'package:oop_tutorial/v17_operationen/union.dart';


class Land {
  int einwohnerAnzahl;
  double flaeche;

  Land({required this.einwohnerAnzahl, required this.flaeche});
  // Überschreibung der == Operator
    @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Land &&
        other.einwohnerAnzahl == einwohnerAnzahl &&
        other.flaeche == flaeche;
  }
 // Überschreibung der hashCode
 // wenn man == Operator überschreibt soll man auch hashCode überschreiben
 // weil die == Operator und hashCode zusammenarbeiten
 // wenn zwei Objekte gleich sind, dann sollen sie auch den gleichen hashCode haben
 // sondern kann es zu unerwarteten Verhalten führen
  @override
  int get hashCode {
    return einwohnerAnzahl.hashCode ^ flaeche.hashCode;
  }

  // Überladung den + Operator
  Land operator +(Land other) {
    return Land(
      // man kann auf this schlüsselwort verzichten
      // ich habe es nur für die bessere Lesbarkeit hinzugefügt
      einwohnerAnzahl: this.einwohnerAnzahl + other.einwohnerAnzahl,
      flaeche: this.flaeche + other.flaeche,
    );
  }



  // beim Multiplizieren von zwei Ländern wird ein Union erstellt
  // die Ausgabe kann auch andere Klassen_Objekte sein 
  Union operator *(Land other) {
    return Union(laender: [this, other]);
  }
  // beim Uberschreiben eine Methode oder eines Operators, soll man die @override Annotation hinzufügen
  // um klasre zu machen dass diese Methode oder Operator von der Superklasse überschrieben wird
  @override
  String toString() {
    return 'Land: Einwohner: $einwohnerAnzahl, Fläche: $flaeche km²';
  }
}


