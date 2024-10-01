class Fuehrerschein {
  int id;
  String typ;
  DateTime ausstellungsdatum;
  DateTime ablaufdatum;
  Fuehrerschein({
    required this.id,
    required this.typ,
    required this.ausstellungsdatum,
    required this.ablaufdatum,
  });
  int get alter => DateTime.now().difference(ausstellungsdatum).inDays ~/ 365;
  bool get isGueltig => DateTime.now().isBefore(ablaufdatum)&&DateTime.now().isAfter(ausstellungsdatum);
}
