void convertFromDecimalToBinary(int numberA) {
  int numberB = 0;
  String binaryDigit = '';

  while (numberA != 0) {
    numberB = numberA % 2;
    binaryDigit += numberB.toString();
    numberA = (numberA / 2).floor();
  }
  print(int.parse(binaryDigit));
}

void convertFromDecimalToBinary2(int numberA) {
  final binaryDigit = numberA.toRadixString(2);
  print(binaryDigit);
}

void convertFromBinaryToDecimal(int numberA) {
  int decimalDigit = 0;
  int lastDigit;
  int i = 1;

  while (numberA > 0) {
    lastDigit = numberA % 10;
    numberA = (numberA / 10).floor();
    decimalDigit += lastDigit * i;
    i = i * 2;
  }
  print(decimalDigit);
}
