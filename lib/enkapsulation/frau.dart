class Frau {
  String vorname;
  String nachname;
  DateTime _geburtsdatum;
  bool verheiratet;
  int _kinderAnzahl;
  String? _ehepartnerNachname;
  Frau({
    required this.vorname,
    required this.nachname,
    // vermittler Attribute
    required DateTime geburtsdatum,
    this.verheiratet = false,
    int kinderAnzahl = 0,
    String? ehepartnerNachname,
  })  : _geburtsdatum = geburtsdatum,
        _ehepartnerNachname = ehepartnerNachname,
        _kinderAnzahl = kinderAnzahl {
    // if (alter < 18) {
    //   throw Exception('Frau ist zu jung zu heiraten');
    // }
    if (geburtsdatum.isAfter(DateTime.now())) {
      _geburtsdatum = DateTime.now();
      throw Exception('Geburtsdatum kann nicht in der Zukunft sein');
    }
  }

  set kinderAnzahl(int value) {
    if(alter < 18) {
      throw Exception('Frau ist zu jung zum Kinder bekommen');
    }
    if (value < 0) {
      _kinderAnzahl = 0;
      return;
    }
    _kinderAnzahl = value;
  }

  int get alter {
    return DateTime.now().year - _geburtsdatum.year;
  }

  DateTime get geburtsdatum {
    return _geburtsdatum;
  }

  int get kinderAnzahl {
    return _kinderAnzahl;
  }

  heiraten(String nachname) {
    if(verheiratet) {
      throw Exception('Frau ist bereits verheiratet');
    }
    if (alter < 18) {
      throw Exception('Frau ist zu jung zum heiraten');
    }
    verheiratet = true;
    _ehepartnerNachname = nachname;
  }

  geschieden() {
    if(!verheiratet) {
      throw Exception('Frau ist nicht verheiratet');
    }
    verheiratet = false;
    _ehepartnerNachname = null;
  }
  kindBekommen() {}
}
