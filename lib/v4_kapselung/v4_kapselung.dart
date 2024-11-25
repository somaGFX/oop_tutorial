

void main() {
  final auto = AutoV4(baujahr: DateTime(2020), marke: 'Mercedes', reifenRadius: 28, reifenBreite: 18, fahrer: 'Max');
  auto.marke = 'Mercedes';
  // innerhalb der Klasse Datei kann man auf private Variablen zugreifen
  auto._maxInsasseZahl = -3;
  print(auto._maxInsasseZahl);
  print(AutoV4.material);
  // auto.details();
}
//########################## Encapsulation #########################

class AutoV4 {
  // die alle Autos haben das gleiche Material
  static const String material = 'Metal';
  // private Variabl mit _ davor.
  // reifenZahl kann beim Umfall geändert werden, daher muss geschützt werden
   int _reifenZahl = 4;
  int _maxInsasseZahl;
  // min Insasse Zahl ist 1 und kann nicht geändert werden
  final int _minIinsasseZahl = 1;
  // _baujahr kann nur im Konstruktor gesetzt werden und darf nich geändert werden.
  // es macht keinen Sinn, dass das Baujahr geändert wird
  final DateTime _baujahr;
   double _reifenRadius; 
   double _reifenBreite; 
  String fahrer;
  String? marke;
  // named Parameter
  AutoV4({
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
          // Konstruktor Validierung 

    if (maxIinsasseZahl > 8) throw Exception('Max IinsasseZahl darf nicht > 8 sein');
    if (maxIinsasseZahl < 1) throw Exception('Max IinsasseZahl darf nicht < 1 sein');
    if (baujahr.isAfter(DateTime.now())) throw Exception('Baujahr darf nicht in der Zukunft sein');
    if (baujahr.isBefore(DateTime(1940))) throw Exception('Baujahr darf nicht zu alt sein');
    print('AutoV4 created');
  }

//######################### Setters #########################
  
  // Setter Validierung
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
  int get moeglichepassagiere => _maxInsasseZahl - _minIinsasseZahl;
  DateTime get baujahr => _baujahr;
  int get alter => DateTime.now().year - _baujahr.year;
  int get reifenZahl => _reifenZahl;
//########################## Methoden #########################
  void fahren() {
    print('AutoV4 fährt');
  }
  // Einen Beispiel für Attribute ,die nur innerhalb einer Methode geändert werden können
  void umfall(int verlusteReifen) {
    if(verlusteReifen.isNegative||verlusteReifen>_reifenZahl) return;
    _reifenZahl -= verlusteReifen;
    print('AutoV4 umfällt');
  }

  void bremsen() {
    print('AutoV4 bremst');
  }

  void liefern() {
    print('AutoV4 kann $_maxInsasseZahl Persone liefert');
  }

  void details() {
    print('Material: $material');
    print('Max IinsasseZahl: $_maxInsasseZahl');
    print('Baujahr: $_baujahr');
    print('Alter: $alter');
    print('Reifen Radius: $_reifenRadius');
    print('Reifen Breite: $_reifenBreite');
    print('Fahrer: $fahrer');
    print('Marke: $marke');
    print('Reifen Zahl: $reifenZahl');
  }
}
