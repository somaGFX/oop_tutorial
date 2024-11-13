

class Rechner {

  // alle diese Methoden sind statisch, sie können ohne Instanzierung der Klasse aufgerufen werden.
  // Sie können aber nicht aus Objekten aufgerufen werden.
  static void addieren(int a, int b) {
    print('$a + $b = ${a + b}');
  }

  static void subtrahieren(int a, int b) {
    print('$a - $b = ${a - b}');
  }

  static void multiplizieren(int a, int b) {
    print('$a * $b = ${a * b}');
  }

  static void dividieren(int a, int b) {
    print('$a / $b = ${a / b}');
  }
}
