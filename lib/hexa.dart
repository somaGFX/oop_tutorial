void main() {
  print(hexToDecimal('ff')); // 26
}

int? hexToDecimal(String hex) {
  int decimalValue = 0;
  int base = 1;

  for (int i = hex.length - 1; i >= 0; i--) {
    if (hexaToDecimalMap.keys.contains(hex[i]) == false) {
      print('Invalid hexa digit');
      // throw Exception('Invalid hexa digit');
      return null;
    }
    int decimalDigit = hexaToDecimalMap[hex[i]];
    decimalValue += decimalDigit * base;
    base *= 16;
  }

  return decimalValue;
}

String dezimalToHexa(int decimal) {
  if (decimal == 0) {
    return '0';
  }
  String hexValue = '';
  while (decimal > 0) {
    int remainder = decimal % 16;
    hexValue = decimalToHexaMap[remainder] + hexValue;
    decimal ~/= 16;
  }

  return hexValue;
}

Map decimalToHexaMap = {
  0: '0',
  1: '1',
  2: '2',
  3: '3',
  4: '4',
  5: '5',
  6: '6',
  7: '7',
  8: '8',
  9: '9',
  10: 'A',
  11: 'B',
  12: 'C',
  13: 'D',
  14: 'E',
  15: 'F',
};
Map hexaToDecimalMap = {
  '0': 0,
  '1': 1,
  '2': 2,
  '3': 3,
  '4': 4,
  '5': 5,
  '6': 6,
  '7': 7,
  '8': 8,
  '9': 9,
  'A': 10,
  'a': 10,
  'B': 11,
  'b': 11,
  'C': 12,
  'c': 12,
  'D': 13,
  'd': 13,
  'E': 14,
  'e': 14,
  'F': 15,
  'f': 15,
};
