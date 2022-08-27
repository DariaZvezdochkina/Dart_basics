Map<String, int> correlateTheWordAndOccurences() {
  int _counter = 0;
  Map<String, int> match = {};
  Map<String, int> animals = {
    'Lion': 1,
    'Cat': 2,
    'Dog': 3,
    'Mouse': 4,
    'Cat': 5,
  };

  for (var animal in animals.keys) {
    if (animal == "Cat") {
      _counter += 1;
    } else {
      _counter = 1;
    }
    match[animal] = _counter;
  }

  return match;
}
