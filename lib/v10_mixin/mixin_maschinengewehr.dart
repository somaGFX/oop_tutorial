mixin Maschinengewehr {
  int kugelRadius = 10;
  int feuerrate = 20;
  int magazinkapazitaet = 10000;
  set kugelRadiusSet(int kugelRadius) {
    this.kugelRadius = kugelRadius;
  }

  int get magazinKapazitaet => magazinkapazitaet;
  void maschinengewehrSchiessen() {
    if (magazinkapazitaet == 0) {
      print('Maschinengewehr kann nicht schießen, weil keine Kugel mehr da ist');
      return;
    }
    magazinkapazitaet--;
    print('Maschinengewehr schießt');
  }

  reloadMaschinengewehr() {
    magazinkapazitaet = 10000;
    print('Maschinengewehr ist wieder geladen');
  }
}


