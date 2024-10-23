import 'package:oop_tutorial/v17_operationen/land.dart';
import 'package:oop_tutorial/v17_operationen/union.dart';

void main() {
  Land deutschland = Land(einwohnerAnzahl: 83000000, flaeche: 357022);
  Land oesterreich = Land(einwohnerAnzahl: 8900000, flaeche: 83879);
  Land denmark = Land(einwohnerAnzahl: 5800000, flaeche: 42952);
  // Die Ausgabe ist ein Land
  Land vereinigteLaender = deutschland + oesterreich;
  // Die Ausgabe ist ein Union
  Union union = deutschland * oesterreich;

  print(vereinigteLaender); //Land: Einwohner: 91900000, Fläche: 440901.0 km²
  print(union); // Union: Einwohner: 91900000, Fläche: 440901.0 km²
  union = union + denmark;
  print(union); // Union: Einwohner: 97700000, Fläche: 483853.0 km²
  union = union + union;
  print(union); // Union: Einwohner: 195400000, Fläche: 967706.0 km²
}
