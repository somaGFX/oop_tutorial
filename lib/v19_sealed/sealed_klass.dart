sealed class SealeFahrzeugd {
  final String marke;
  int geschwindigkeit;
  SealeFahrzeugd(this.marke, this.geschwindigkeit);
 // seald Klassen sind abstrakt und können abstract Mehoden haben
  void fahren();
}

class AutoAusSealedFahrzeug extends SealeFahrzeugd {
  AutoAusSealedFahrzeug(super.marke, super.geschwindigkeit);

  @override
  void fahren() {
    print('Das Auto fährt');
  }
}

class BusAusSealedFahrzeug extends SealeFahrzeugd {
  final int sitzplaetze;
  BusAusSealedFahrzeug(this.sitzplaetze, super.marke, super.geschwindigkeit);

  @override
  void fahren() {
    print('Der Bus fährt');
  }
}

class LkwAusSealedFahrzeug extends SealeFahrzeugd {
  final int maxLast;
  LkwAusSealedFahrzeug(this.maxLast, super.marke, super.geschwindigkeit);

  @override
  void fahren() {
    print('Der LKW fährt');
  }
}
