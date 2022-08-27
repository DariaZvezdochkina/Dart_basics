extension Root on num {
  num nthRoot(num degree) {
    try {
      if (this < 0 && degree % 2 == 0) {
        throw ArgumentError(
            'the root does not exist because the мфдгу is negative');
      }
      if (this == 0 && degree < 2) {
        throw ArgumentError('Degree must be bigger than 2 for 0 value');
      }
      if (degree == 0) {
        throw ArgumentError('zero degree is impossible');
      }

      const double _eps = 0.00001;
      num _value = this / degree;
      num _result = this;
      while ((_result - _value).abs() >= _eps) {
        _value = _result;
        _result = (1 / degree) *
            ((degree - 1) * _value + this / (power(_value, degree - 1)));
      }
      return _result;
    } on ArgumentError catch (e) {
      print(e);
    }
    return 0;
  }

  num power(num x, num degree) {
    num _result = 1;
    for (int i = 0; i < degree; i++) {
      _result *= x;
    }

    return _result;
  }
}
