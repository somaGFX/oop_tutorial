void main() {
  print('Hello World Mensch v1');

  final mensch = Mensch();

  mensch.laufen();
  mensch.heiraten();
  mensch.scheiden();
  mensch.gebaeren();
}

class Mensch {
  String name = 'Frieda';
  String vorname = 'Lerch';
  String geburtsname = 'Musterfrau';
  DateTime geburtstag = DateTime(2000, 9, 7, 12, 21);
  String geschlecht = 'weiblich';
  int alter = 24; //sollte berechnet werden, aus dem Geburtstag...

  Mensch() {
    print('Mensch wurde kreiert');
  }

  void laufen() {
    print('$name laeuft');
  }

  void heiraten() {
    print('$name heiratet');
  }

  void scheiden() {
    print('$name laesst sich scheiden');
  }

  void gebaeren() {
    print('$name gebaert ein Kind');
  }
}