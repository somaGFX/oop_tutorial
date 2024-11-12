import 'package:oop_tutorial/v17_operationen/land.dart';

class Union {
  List<Land> laender;
  Union({required this.laender});

  int get einwohnerAnzahl => laender.map((land) => land.einwohnerAnzahl).reduce((a, b) => a + b);

  double get flaeche => laender.map((land) => land.flaeche).reduce((a, b) => a + b);

  @override
  String toString() {
    return 'Union: Einwohner: $einwohnerAnzahl, Fläche: $flaeche km²';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Union && other.laender == laender;
  }

  @override
  int get hashCode => laender.hashCode;
 // other kann ein Land oder Union sein
  Union operator +(dynamic other) {
    
    if (other.runtimeType == Land) {
      return Union(laender: laender..add(other));
    }
    if (other.runtimeType == Union) {
      return Union(laender: [...laender, ...other.laender]);
    }
    throw Exception('Invalid type, Operator darf nur mit Land oder Union verwendet werden');
  }
}
