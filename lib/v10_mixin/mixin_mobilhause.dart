import 'package:oop_tutorial/v10_mixin/v10_fahrzeug.dart';


// Mixins können mitteles on Schlüsselworten auf bestimmte Klassen angewendet werden.
// Und können auch mit anderen Klassen benutzt werden.
mixin MobilHaus on V10Fahrzeug {
  double wohnFlache = 30;
  int sitzPlatzAnzahl = 4;
  int schlafPlatzAnzahl = 2;

  set wohnFlacheSet(double wohnFlache) {
    this.wohnFlache = wohnFlache;
  }

  set sitzPlatzAnzahlSet(int sitzPlatzAnzahl) {
    this.sitzPlatzAnzahl = sitzPlatzAnzahl;
  }

  set schlafPlatzAnzahlSet(int schlafPlatzAnzahl) {
    this.schlafPlatzAnzahl = schlafPlatzAnzahl;
  }
}

