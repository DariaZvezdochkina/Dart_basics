void returnNumCollection(String line) {
  List _phrase = [];
  List<int> _number = [];
  String? _value = '';

  RegExp exp = RegExp(r'[0-9]');
  Iterable<RegExpMatch> matches = exp.allMatches(line);
  for (final m in matches) {
    _value = m[0];
    _phrase.add(_value);
  }

  for (var i in _phrase) {
    int? value = int.tryParse(i);
    _number.add(value!);
  }

  print(_number);
}
