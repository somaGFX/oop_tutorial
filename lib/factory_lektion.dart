class AutoFactory {
  int reifenZahl;
  int insasseZahl;
  DateTime baujahr;
  // 28 => 38
  double reifenRadius;
  // 18 => 25
  double reifenBreite;
  String? fahrer;
  String marke;
  // Named Parameter
  AutoFactory({
    required this.reifenZahl,
    required this.baujahr,
    required this.marke,
    required this.reifenRadius,
    required this.reifenBreite,
    required this.insasseZahl,
    this.fahrer,
  });

  factory AutoFactory.defaultAuto() {
    return AutoFactory(
        reifenZahl: 4, baujahr: DateTime(2020), marke: 'BMW', reifenRadius: 25, reifenBreite: 18, insasseZahl: 7);
  }
  

  void details() {
    print('InsasseZahl: $insasseZahl');
    print('Baujahr: $baujahr');
    print('Reifen Radius: $reifenRadius');
    print('Reifen Breite: $reifenBreite');
    print('Fahrer: $fahrer');
    print('Marke: $marke');
    print('Reifen Zahl: $reifenZahl');
  }
}

void main() {
  final auto = AutoFactory.defaultAuto();
  auto.details();
  final auto1 = AutoFactory.defaultAuto();
}
