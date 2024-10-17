import 'package:oop_tutorial/v10_mixin/v10_fahrzeug.dart';

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

