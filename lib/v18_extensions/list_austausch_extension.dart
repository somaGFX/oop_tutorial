extension ListAustauschExtension<T> on List<T> {
  /// Tauscht zwei Elemente in der Liste aus.
  void indexTauschen(int index1, int index2) {
    if (index1 < 0 || index1 >= this.length) {
      throw RangeError('index1 ist außerhalb des gültigen Bereichs');
    } else if (index2 < 0 || index2 >= this.length) {
      throw RangeError('index2 ist außerhalb des gültigen Bereichs');
    } else if (index1 == index2) {
      return;
    }
    final temp = this[index1];
    this[index1] = this[index2];
    this[index2] = temp;
  }

  void wertTaushen(T wert1, T wert2) {
    final index1 = this.indexOf(wert1);
    final index2 = this.indexOf(wert2);
    if (index1 == -1 || index2 == -1) {
      throw ArgumentError('Ein Wert ist nicht in der Liste enthalten');
    }
    final temp = this[index1];
    this[index1] = this[index2];
    this[index2] = temp;
  }

  List<T> operator +(List<T> other) {
    return [...this, ...other];
  }
  // List<num> operator *(num factor){
  //   for (var element in this) {
  //     if(element is! num){
  //       throw ArgumentError('Die Liste enthält nicht nur Zahlen');
  //     }
  //   }
  //  return this.map((e) => e!*factor).toList();
  // } 
}