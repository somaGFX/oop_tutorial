class Fuehrerschein {
  int id;
  FuehrerscheinTyp typ;
  DateTime ausstellungsdatum;
  DateTime ablaufdatum;
  Fuehrerschein({
    required this.id,
    required this.typ,
    required this.ausstellungsdatum,
    required this.ablaufdatum,
  });
  int get alter => DateTime.now().difference(ausstellungsdatum).inDays ~/ 365;
  // Gültigkeitsprüfung
  bool get isGueltig => DateTime.now().isBefore(ablaufdatum) && DateTime.now().isAfter(ausstellungsdatum);
}

// Wir werden ausführlich über Enums in der nächsten Lektionen sprechen
enum FuehrerscheinTyp {
  pkw('PKW'),
  lKW('LKW'),
  motorad('Motorad'),
  bus('Bus');

  final String lable;
 const FuehrerscheinTyp(this.lable);
}
