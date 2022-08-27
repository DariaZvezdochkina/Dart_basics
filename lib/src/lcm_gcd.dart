int calculateGCD(int numberA, int numberB) {
  int _numberC = 0;

  if (numberA < numberB) {
    swap(numberA, numberB, _numberC);
  }
  while (numberB != 0) {
    numberA %= numberB;
    _numberC = numberA;
    numberA = numberB;
    numberB = _numberC;
  }

  return numberA;
}

int calculateGCD2(int numberA, int numberB) {
  return numberA.gcd(numberB);
}

void swap(int numberA, int numberB, int numberC) {
  numberC = numberA;
  numberA = numberB;
  numberB = numberC;
}

double calculateLCM(int numberA, int numberB) {
  return (numberA / calculateGCD(numberA, numberB) * numberB);
}
