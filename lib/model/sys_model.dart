class Sys {
  late String _country;
  late int _sunrise;
  late int _sunset;
  late int _id;
  late int _type;
  late double _message;

  Sys(parsedJson) {
    _country = parsedJson['country'];
    _sunrise = parsedJson['sunrise'];
    _sunset = parsedJson['sunset'];
    _id = parsedJson['id'];
    _type = parsedJson['type'];
    _message = parsedJson['message'];
  }

  double get message => _message;

  set message(double value) {
    _message = value;
  }

  int get type => _type;

  set type(int value) {
    _type = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  int get sunset => _sunset;

  set sunset(int value) {
    _sunset = value;
  }

  int get sunrise => _sunrise;

  set sunrise(int value) {
    _sunrise = value;
  }

  String get country => _country;

  set country(String value) {
    _country = value;
  }
}
