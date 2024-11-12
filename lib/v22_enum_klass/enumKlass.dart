

class FlexibleAuto {
  final String name;
  final int geschwindigkeit;
  final int sitzplaetze;
  FlexibleAuto({required this.name, required this.geschwindigkeit, required this.sitzplaetze});

  String get info => 'FlexibleAuto: name: $name, Geschwindigkeit: $geschwindigkeit, Sitzplätze: $sitzplaetze';
  void fahren() {
    print('Das Auto fährt');
  }

  void bremsen() {
    print('Das Auto bremst');
  }
} 


enum FahrzeugEnum {
  auto(geschwindigkeit: 220, name: 'BMW', sitzplaetze: 5),
  bus(geschwindigkeit: 180, name: 'Mazedis', sitzplaetze: 50),
  lkw(geschwindigkeit: 120, name: 'Toyota', sitzplaetze: 2);

  final String name;
  final int geschwindigkeit;
  final int sitzplaetze;
  const FahrzeugEnum({required this.name, required this.geschwindigkeit, required this.sitzplaetze});

  static flexiibleAuto({required String name, required int geschwindigkeit, required int sitzplaetze}) {
    return FlexibleAuto( name: name, geschwindigkeit: geschwindigkeit, sitzplaetze: sitzplaetze);
  }

  String get info => 'FahrzeugEnum: name: $name, Geschwindigkeit: $geschwindigkeit, Sitzplätze: $sitzplaetze';
  void fahren() {
    if (this == FahrzeugEnum.auto) print('Das Auto fährt');
    if (this == FahrzeugEnum.bus) print('Der Bus fährt');
    if (this == FahrzeugEnum.lkw) print('Der LKW fährt');
  }

  void bremsen() {
    print('Das Fahrzeug bremst');
  }
}
