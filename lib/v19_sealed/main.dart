import 'package:oop_tutorial/v19_sealed/sealed_klass.dart';

void main() {
  // final fahrzeug= SealeFahrzeugd('BMW', 200); // Fehler: sealed Klassen sind abstrakt und können nicht instanziiert werden.
final auto = AutoAusSealedFahrzeug('BMW', 200);
auto.fahren(); // Das Auto fährt
}




// Fehler: Sealed Klassen kann außerhalb ihre Datei nicht extendiert werden
// class SpielzeugAuto extends SealeFahrzeugd {
//   SpielzeugAuto(String marke, int geschwindigkeit) : super(marke, geschwindigkeit);

//   @override
//   void fahren() {
//     print('Das Spielzeugauto fährt');
//   }
// }


// Fehler: Sealed Klassen kann außerhalb ihre Datei nicht implementiert werden

// class Auto implements SealeFahrzeugd {
//   @override
//   int geschwindigkeit;

//   @override
//   String marke;

//   Auto(this.marke, this.geschwindigkeit);

//   @override
//   void fahren() {
//     print('Das Auto fährt');
//   }
// }