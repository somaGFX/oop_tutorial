// normaler Enum
enum EnginEnum {
  diesel,
  benzin,
  elektro,
  gas,
  hybrid,
}
  class Engin{
    EnginEnum motor;
    String name;
    Engin(this.motor, this.name);

    Map<String, dynamic> toMap() {
      // motor.toString()=> EnginEnum.diesel. und das will man nicht. sondern nur 'Diesel'
      // deshalb wird ein Switch-Case verwendet. und das ist zu viel Code.
      String motorType;
      switch (motor) {
        case EnginEnum.diesel:
          motorType = 'Diesel';
          break;
        case EnginEnum.benzin:
          motorType = 'Benzin';
          break;
        case EnginEnum.elektro:
          motorType = 'Elektro';
          break;
        case EnginEnum.gas:
          motorType = 'Gas';
          break;
        case EnginEnum.hybrid:
          motorType = 'Hybrid';
          break;
        default:
          motorType = 'Unbekannt';
      }
      return {
        'motor': motorType,
        'name': name,
      };
    }

    int get tankenKosten {
      switch (motor) {
        case EnginEnum.diesel:
          return 50;
        case EnginEnum.benzin:
          return 60;
        case EnginEnum.elektro:
          return 30;
        case EnginEnum.gas:
          return 40;
        case EnginEnum.hybrid:
          return 45;
        default:
          return 0;
      }
    }
  }


class AutoMitEnum {
  EnginEnum motor;
  String name;
  AutoMitEnum(this.motor, this.name);
}
//########################################################################################

// Enum mit String Elemente
enum EnginEnumMitStringElemente {
  // jeweils Elemente gilt als Objekt mit einem String-Label
  diesel('Diesel',50),
  benzin('Benzin',60),
  elektro('Elektro',30),
  gas8('Gas',40),
  hybrid('Hybrid',45),
  ;

  // wie eine normale Klasse, die Attribute und Komstruktor hat.
  final String lable;
  final int tankenKosten;
  const EnginEnumMitStringElemente(this.lable, this.tankenKosten);
}

class AutoMitStringEnum {
  EnginEnumMitStringElemente motor;
  String name;
  AutoMitStringEnum(this.motor, this.name);
 // die Enum Klasse hat den Bau von Methoden viel einfacher gemacht.
  Map<String, dynamic> toMap() {
    return {
      'motor': motor.lable,
      'name': name,
    };
  }
 
  int get tankenKosten {
    return motor.tankenKosten;
  }

}
