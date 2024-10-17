///- [AutoV20] ist eine Klasse, die ein Auto repräsentiert.
class AutoV20
 {
  ///- [material] ist ein Konstante, die das Material des Autos repräsentiert.
  static const String material = 'Metal';
  ///- [_reifenZahl] ist ein Konstante, die die Anzahl der Reifen des Autos repräsentiert.
   int _reifenZahl = 4;
  ///- [_maxInsasseZahl] ist eine private Variable, die die maximale Anzahl der Insassen des Autos repräsentiert.
  int _maxInsasseZahl;
  ///- [_minIinsasseZahl] ist eine private Konstante, die die minimale Anzahl der Insassen des Autos repräsentiert.
  final int _minIinsasseZahl = 1;
  ///- [_baujahr] ist eine private Konstante, die das Baujahr des Autos repräsentiert.
  final DateTime _baujahr;
  ///- [_reifenRadius] ist eine private Konstante, die den Radius der Reifen des Autos repräsentiert.
  double _reifenRadius;
  ///- [_reifenBreite] ist eine private Konstante, die die Breite der Reifen des Autos repräsentiert.
  double _reifenBreite;
  ///- [fahrer] ist eine Variable, die den Fahrer des Autos repräsentiert.
  String? fahrer;
  ///- [marke] ist eine Variable, die die Marke des Autos repräsentiert.
  String? marke;
//######################### Konstruktoren #########################
  ///- [AutoV20] ist eine Klasse, die ein Auto repräsentiert.
  AutoV20({
    required DateTime baujahr,
    required this.marke,
    int maxIinsasseZahl = 5,
    required double reifenRadius,
    required double reifenBreite,
    required this.fahrer,
  })  : _maxInsasseZahl = maxIinsasseZahl,
        _baujahr = baujahr,
        _reifenRadius = reifenRadius,
        _reifenBreite = reifenBreite {
    if (maxIinsasseZahl > 8) throw Exception('Max IinsasseZahl darf nicht > 8 sein');
    if (maxIinsasseZahl < 1) throw Exception('Max IinsasseZahl darf nicht < 1 sein');
    if (baujahr.isAfter(DateTime.now())) throw Exception('Baujahr darf nicht in der Zukunft sein');
    if (baujahr.isBefore(DateTime(1940))) throw Exception('Baujahr darf nicht zu alt sein');
    print('AutoV5 created');
  }

//######################### Setters #########################
///- [maxIinsasseZahl] ist ein Setter, der die maximale Anzahl der Insassen des Autos setzt.
  set maxIinsasseZahl(int value) {
    if (value > 8) {
      _maxInsasseZahl = 8;
      return;
    }
    if (value < 1) {
      _maxInsasseZahl = 1;
      return;
    }
    _maxInsasseZahl = value;
  }
///- [reifenRadius] ist ein Setter, der den Radius der Reifen des Autos setzt.
  set reifenRadius(double value) {
    if (value < 28) {
      _reifenRadius = 28;
      return;
    }
    if (value > 38) {
      _reifenRadius = 38;
      return;
    }
    _reifenRadius = value;
  }
///- [reifenBreite] ist ein Setter, der die Breite der Reifen des Autos setzt.
  set reifenBreite(double value) {
    if (value < 18) {
      _reifenBreite = 18;
      return;
    }
    if (value > 25) {
      _reifenBreite = 25;
      return;
    }
    _reifenBreite = value;
  }

//########################## getters #########################
///- [moeglichepassagiere] ist ein Getter, der die Anzahl der möglichen Passagiere des Autos zurückgibt.
  int get moeglichepassagiere => _maxInsasseZahl - _minIinsasseZahl;
  ///- [baujahr] ist ein Getter, der das Baujahr des Autos zurückgibt.
  DateTime get baujahr => _baujahr;
  ///- [alter] ist ein Getter, der das Alter des Autos zurückgibt.
  int get alter => DateTime.now().year - _baujahr.year;
//########################## Methoden #########################
///- [fahren] ist eine Methode, die das Auto fahren lässt.
  void fahren() {
    print('AutoV20 fährt');
  }

    void umfall(int verlusteReifen) {
    if(verlusteReifen.isNegative||verlusteReifen>_reifenZahl) return;
    _reifenZahl -= verlusteReifen;
    print('AutoV20 umfällt');
  }
///- [bremsen] ist eine Methode, die das Auto bremst.
  void bremsen() {
    print('AutoV20 bremst');
  }
///- [liefern] ist eine Methode, die die Lieferdinste des Aitos beschreibt.
  void liefern() {
    print('AutoV20 $_maxInsasseZahl Persone liefert');
  }
///- [details] ist eine Methode, die die Details des Autos ausgibt.
  void details() {
    print('Material: $material');
    print('Max IinsasseZahl: $_maxInsasseZahl');
    print('Baujahr: $_baujahr');
    print('Alter: $alter');
    print('Reifen Radius: $_reifenRadius');
    print('Reifen Breite: $_reifenBreite');
    print('Fahrer: $fahrer');
    print('Marke: $marke');
    print('Reifen Zahl: $_reifenZahl');
  }
}
