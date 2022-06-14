// To parse this JSON data, do
//
//     final weatherModel = weatherModelFromJson(jsonString);

import 'dart:convert';

WeatherModel weatherModelFromJson(String str) =>
    WeatherModel.fromJson(json.decode(str));

String weatherModelToJson(WeatherModel data) => json.encode(data.toJson());

class WeatherModel {
  WeatherModel({
    required this.coord,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.clouds,
    required this.dt,
    required this.sys,
    required this.id,
    required this.name,
    required this.cod,
  });

  Coord? coord;
  List<Weather>? weather;
  String? base;
  Main? main;
  int? visibility;
  Wind? wind;
  Clouds? clouds;
  int? dt;
  Sys? sys;
  int? id;
  String? name;
  int? cod;

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        coord: json["coord"] == null ? null : Coord.fromJson(json["coord"]),
        weather: json["weather"] == null
            ? null
            : List<Weather>.from(
                json["weather"].map((x) => Weather.fromJson(x))),
        base: json["base"] == null ? null : json["base"],
        main: json["main"] == null ? null : Main.fromJson(json["main"]),
        visibility: json["visibility"] == null ? null : json["visibility"],
        wind: json["wind"] == null ? null : Wind.fromJson(json["wind"]),
        clouds: json["clouds"] == null ? null : Clouds.fromJson(json["clouds"]),
        dt: json["dt"] == null ? null : json["dt"],
        sys: json["sys"] == null ? null : Sys.fromJson(json["sys"]),
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        cod: json["cod"] == null ? null : json["cod"],
      );

  Map<String, dynamic> toJson() => {
        "coord": coord == null ? null : coord!.toJson(),
        "weather": weather == null
            ? null
            : List<dynamic>.from(weather!.map((x) => x.toJson())),
        "base": base == null ? null : base,
        "main": main == null ? null : main!.toJson(),
        "visibility": visibility == null ? null : visibility,
        "wind": wind == null ? null : wind!.toJson(),
        "clouds": clouds == null ? null : clouds!.toJson(),
        "dt": dt == null ? null : dt,
        "sys": sys == null ? null : sys!.toJson(),
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "cod": cod == null ? null : cod,
      };
}

class Clouds {
  Clouds({
    required this.all,
  });

  int? all;

  factory Clouds.fromJson(Map<String, dynamic> json) => Clouds(
        all: json["all"] == null ? null : json["all"],
      );

  Map<String, dynamic> toJson() => {
        "all": all == null ? null : all,
      };
}

class Coord {
  Coord({
    required this.lon,
    required this.lat,
  });

  double? lon;
  double? lat;

  factory Coord.fromJson(Map<String, dynamic> json) => Coord(
        lon: json["lon"] == null ? null : json["lon"].toDouble(),
        lat: json["lat"] == null ? null : json["lat"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "lon": lon == null ? null : lon,
        "lat": lat == null ? null : lat,
      };
}

class Main {
  Main({
    required this.temp,
    required this.pressure,
    required this.humidity,
    required this.tempMin,
    required this.tempMax,
  });

  double? temp;
  int? pressure;
  int? humidity;
  double? tempMin;
  double? tempMax;

  factory Main.fromJson(Map<String, dynamic> json) => Main(
        temp: json["temp"] == null ? null : json["temp"].toDouble(),
        pressure: json["pressure"] == null ? null : json["pressure"],
        humidity: json["humidity"] == null ? null : json["humidity"],
        tempMin: json["temp_min"] == null ? null : json["temp_min"].toDouble(),
        tempMax: json["temp_max"] == null ? null : json["temp_max"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "temp": temp == null ? null : temp,
        "pressure": pressure == null ? null : pressure,
        "humidity": humidity == null ? null : humidity,
        "temp_min": tempMin == null ? null : tempMin,
        "temp_max": tempMax == null ? null : tempMax,
      };
}

class Sys {
  Sys({
    required this.type,
    required this.id,
    required this.message,
    required this.country,
    required this.sunrise,
    required this.sunset,
  });

  int? type;
  int? id;
  double? message;
  String? country;
  int? sunrise;
  int? sunset;

  factory Sys.fromJson(Map<String, dynamic> json) => Sys(
        type: json["type"] == null ? null : json["type"],
        id: json["id"] == null ? null : json["id"],
        message: json["message"] == null ? null : json["message"].toDouble(),
        country: json["country"] == null ? null : json["country"],
        sunrise: json["sunrise"] == null ? null : json["sunrise"],
        sunset: json["sunset"] == null ? null : json["sunset"],
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : type,
        "id": id == null ? null : id,
        "message": message == null ? null : message,
        "country": country == null ? null : country,
        "sunrise": sunrise == null ? null : sunrise,
        "sunset": sunset == null ? null : sunset,
      };
}

class Weather {
  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  int? id;
  String? main;
  String? description;
  String? icon;

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        id: json["id"] == null ? null : json["id"],
        main: json["main"] == null ? null : json["main"],
        description: json["description"] == null ? null : json["description"],
        icon: json["icon"] == null ? null : json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "main": main == null ? null : main,
        "description": description == null ? null : description,
        "icon": icon == null ? null : icon,
      };
}

class Wind {
  Wind({
    required this.speed,
    required this.deg,
  });

  double? speed;
  int? deg;

  factory Wind.fromJson(Map<String, dynamic> json) => Wind(
        speed: json["speed"] == null ? null : json["speed"].toDouble(),
        deg: json["deg"] == null ? null : json["deg"],
      );

  Map<String, dynamic> toJson() => {
        "speed": speed == null ? null : speed,
        "deg": deg == null ? null : deg,
      };
}
