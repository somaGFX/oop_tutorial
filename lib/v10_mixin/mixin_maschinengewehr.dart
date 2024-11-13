mixin Maschinengewehr {
  int kugelRadius = 10;
  int feuerrate = 20;
  // Mixins können auch private Attribute haben.
  int _magazinkapazitaet = 10000;
  set kugelRadiusSet(int kugelRadius) {
    this.kugelRadius = kugelRadius;
  }

  int get magazinKapazitaet => _magazinkapazitaet;
  void maschinengewehrSchiessen() {
    if (_magazinkapazitaet == 0) {
      print('Maschinengewehr kann nicht schießen, weil keine Kugel mehr da ist');
      return;
    }
    _magazinkapazitaet--;
    print('Maschinengewehr schießt');
  }

  reloadMaschinengewehr() {
    _magazinkapazitaet = 10000;
    print('Maschinengewehr ist wieder geladen');
  }
}


