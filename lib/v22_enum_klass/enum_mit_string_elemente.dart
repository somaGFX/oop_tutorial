// normaler Enum
enum EnginEnum {
  diesel,
  benzin,
  elektro,
  gas,
  hybrid,
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
  diesel('Diesel'),
  benzin('Benzin'),
  elektro('Elektro'),
  gas8('Gas'),
  hybrid('Hybrid'),
  ;

  // wie eine normale Klasse, die Attribute und Komstruktor hat.
  final String lable;
  const EnginEnumMitStringElemente(this.lable);
}

class AutoMitStringEnum {
  EnginEnumMitStringElemente motor;
  String name;
  AutoMitStringEnum(this.motor, this.name);
}
