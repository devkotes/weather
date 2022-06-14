class Clouds {
  late int _all;

  Clouds(parseJson) {
    _all = parseJson['all'];
  }

  int get all => _all;

  set all(int value) {
    _all = value;
  }
}
