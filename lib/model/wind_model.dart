class Wind {
  late int _deg;
  late double _speed;

  Wind(parsedJson) {
    _deg = parsedJson['deg'];
    _speed = parsedJson['speed'];
  }

  int get deg => _deg;

  set deg(int value) {
    _deg = value;
  }

  double get speed => _speed;

  set speed(double value) {
    _speed = value;
  }
}
