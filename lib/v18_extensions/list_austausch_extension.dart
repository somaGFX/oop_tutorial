// Ein Extension auf List<T> um zwei Elemente in einer Liste zu tauschen.
extension ListAustauschExtension on List {
  ///- [indexTauschen] Tauscht zwei Elemente in der Liste aus, durch Angabe der Indizes.
  void indexTauschen(int index1, int index2) {
    // Überprüfe, ob die Indizes innerhalb des gültigen Bereichs liegen.
    if (index1 < 0 || index1 >= length) {
      // Wirf eine RangeError-Instanz, wenn index1 außerhalb des gültigen Bereichs liegt.
      throw RangeError('index1 ist außerhalb des gültigen Bereichs');
    } else if (index2 < 0 || index2 >= length) {
      // Wirf eine RangeError-Instanz, wenn index2 außerhalb des gültigen Bereichs liegt.
      throw RangeError('index2 ist außerhalb des gültigen Bereichs');
      // Überprüfe, ob die Indizes gleich sind.
    } else if (index1 == index2) {
      return;
    }
    // Tausche die Elemente an den Indizes index1 und index2.
    final temp = this[index1];
    this[index1] = this[index2];
    this[index2] = temp;
  }

  ///- [wertTaushen] Tauscht zwei Werte in der Liste aus.
  void wertTaushen(var wert1, var wert2) {
    // Finde die Indizes der Werte in der Liste.
    final index1 = indexOf(wert1);
    final index2 = indexOf(wert2);
    // Überprüfe, ob die Werte in der Liste enthalten sind.
    if (index1 == -1 || index2 == -1) {
      // Wirf eine ArgumentError-Instanz, wenn ein Wert nicht in der Liste enthalten ist.
      throw ArgumentError('Ein Wert ist nicht in der Liste enthalten');
    }
    // Tausche die Elemente an den Indizes index1 und index2.
    final temp = this[index1];
    this[index1] = this[index2];
    this[index2] = temp;
  }

  List operator /(int divisor) {
    // Berechne die neue Länge der Liste, indem die aktuelle Länge durch den Divisor geteilt wird.
    final newLength = length ~/ divisor;

    // Erstelle und gib eine Teilmenge der Liste zurück, beginnend bei Index 0
    // und endend bei der berechneten Länge (auf Integer abgerundet).
    return sublist(0, newLength);
  }
  // List verdoppeln je nach dem Faktor.
  List operator *(int factor) {
    List result = [];
    for (var i = 0; i < factor; i++) {
     result. addAll(this);
    }
    return result;
  }
}
// Die Extension Operationen auf List<int> definiert die Methoden add, sum und die Operatoren *, / und +.
extension Operationen on List<int> {
  // Fügt ein Element am Anfang der Liste ein.
  // diese Methode ist sinnlos, da add() bereits in der Klasse List definiert ist.
  // Und man kann es auch nicht überschreiben.
  void add(var value) {
    insert(0, value); 
  }
 // Berechnet die Summe aller Elemente in der Liste.
 // Diese Methode ist exclusive für List<int> definiert.
 // Wenn man sie auf einer Liste vom Typ List<dynamic> aufruft, kriegt man einen Fehler.
  int addieren() {
    // reduce() ist eine Methode, die auf einer Liste angewendet wird und ein einzelnes Ergebnis zurückgibt.
    return reduce((value, element) => value + element);
  }
  // Multipliziert jedes Element in der Liste mit einem Faktor.
  // Diese Methode ist exclusive für List<int> definiert.
  // diese Methode ist sinnvoll, weil * Operator nicht auf List<int> definiert ist.
  List<int> operator *(int factor) {
    return map((e) => e * factor).toList();
  }
 // Dividiert jedes Element in der Liste durch einen Divisor.
  // Diese Methode ist exclusive für List<int> definiert.
  // diese Methode ist sinnvoll, weil / Operator nicht auf List<int> definiert ist.
  List<int> operator /(int divisor) {
    return map((e) => e ~/ divisor).toList();
  }
 // Addiert einen Factor zu jedem Element in der Liste.
 // diese Methode ist sinnlose, weil + Operator bereits auf List<int> definiert ist.
  List<int> operator +(int factor) {
    return map((e) => e + factor).toList();
  }
}
