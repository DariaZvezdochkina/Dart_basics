List returnUniqueNum() {
  List<dynamic> number = [];

  Map<String, int> wordNumbers = {
    'zero': 0,
    'one': 1,
    'two': 2,
    'three': 3,
    'four': 4,
    'five': 5,
    'six': 6,
    'seven': 7,
    'eight': 8,
    'nine': 9
  };
  List<String> words = [
    'one',
    'two',
    'three',
    'cat',
    'dog',
    'one',
    'two',
    'nine',
    'five'
  ];
  words = words.toSet().toList();

  for (var word in words) {
    if (wordNumbers.containsKey(word)) {
      number.add(wordNumbers[word]);
    }
  }
  return number;
}
