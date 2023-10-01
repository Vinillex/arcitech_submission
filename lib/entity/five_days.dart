import 'dart:convert';

import 'package:objectbox/objectbox.dart';

List<dynamic> listElementToJson(List<ListElement> entity) =>
    entity.isNotEmpty ? entity.map((e) => e.toJson()).toList() : [];

@Entity()
class FiveDaysEntity {
  FiveDaysEntity({
    this.localId = 0,
    this.cod,
    this.message,
    this.cnt,
    this.list,
    this.city,
  });

  @Id()
  int? localId;
  String? cod;
  int? message;
  int? cnt;
  List<ListElement>? list;
  City? city;

  String get dbCityData => jsonEncode(city!.toJson());

  set dbCityData(String value) => city = City.fromJson(jsonDecode(value));

  String get dbElementList => jsonEncode(listElementToJson(list!));

  set dbElementList(String value) => list = List.from(json.decode(value))
      .map((e) => ListElement.fromJson(e))
      .toList();

  factory FiveDaysEntity.fromJson(Map<String, dynamic> json) {
    return FiveDaysEntity(
      cod: json["cod"],
      message: json["message"],
      cnt: json["cnt"],
      list: json["list"] == null
          ? []
          : List<ListElement>.from(
              json["list"]!.map((x) => ListElement.fromJson(x))),
      city: json["city"] == null ? null : City.fromJson(json["city"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "cod": cod,
        "message": message,
        "cnt": cnt,
        "list": list!.map((x) => x?.toJson()).toList(),
        "city": city?.toJson(),
      };
}

class City {
  City({
    this.localId = 0,
    this.id,
    this.name,
    this.coord,
    this.country,
    this.population,
    this.timezone,
    this.sunrise,
    this.sunset,
  });

  @Id()
  int? localId;
  int? id;
  String? name;
  Coord? coord;
  String? country;
  int? population;
  int? timezone;
  int? sunrise;
  int? sunset;

  String get dbCoordData => jsonEncode(coord!.toJson());

  set dbCoordData(String value) => coord = Coord.fromJson(jsonDecode(value));

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json["id"],
      name: json["name"],
      coord: json["coord"] == null ? null : Coord.fromJson(json["coord"]),
      country: json["country"],
      population: json["population"],
      timezone: json["timezone"],
      sunrise: json["sunrise"],
      sunset: json["sunset"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "coord": coord?.toJson(),
        "country": country,
        "population": population,
        "timezone": timezone,
        "sunrise": sunrise,
        "sunset": sunset,
      };
}

class Coord {
  Coord({
    this.localId = 0,
    this.lat,
    this.lon,
  });

  @Id()
  int? localId;
  double? lat;
  double? lon;

  factory Coord.fromJson(Map<String, dynamic> json) {
    return Coord(
      lat: json["lat"],
      lon: json["lon"],
    );
  }

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "lon": lon,
      };
}

List<dynamic> listWeatherElementToJson(List<Weather> entity) =>
    entity.isNotEmpty ? entity.map((e) => e.toJson()).toList() : [];

class ListElement {
  ListElement({
    this.localId = 0,
    this.dt,
    this.main,
    this.weather,
    this.clouds,
    this.wind,
    this.visibility,
    this.pop,
    this.rain,
    this.sys,
    this.dtTxt,
  });

  @Id()
  int? localId;
  int? dt;
  Main? main;
  List<Weather>? weather;
  Clouds? clouds;
  Wind? wind;
  int? visibility;
  double? pop;
  Rain? rain;
  Sys? sys;
  DateTime? dtTxt;

  String get dbSysData => jsonEncode(sys!.toJson());

  set dbSysData(String value) => sys = Sys.fromJson(jsonDecode(value));

  String get dbCloudsData => jsonEncode(clouds!.toJson());

  set dbCloudsData(String value) => clouds = Clouds.fromJson(jsonDecode(value));

  String get dbRainData => jsonEncode(rain!.toJson());

  set dbRainData(String value) => rain = Rain.fromJson(jsonDecode(value));

  String get dbWindData => jsonEncode(wind!.toJson());

  set dbWindData(String value) => wind = Wind.fromJson(jsonDecode(value));

  String get dbMainData => jsonEncode(main!.toJson());

  set dbMainData(String value) => main = Main.fromJson(jsonDecode(value));

  String get dbWeatherList => jsonEncode(listWeatherElementToJson(weather!));

  set dbWeatherList(String value) => weather =
      List.from(json.decode(value)).map((e) => Weather.fromJson(e)).toList();

  factory ListElement.fromJson(Map<String, dynamic> json) {
    return ListElement(
      dt: json["dt"],
      main: json["main"] == null ? null : Main.fromJson(json["main"]),
      weather: json["weather"] == null
          ? []
          : List<Weather>.from(
              json["weather"]!.map((x) => Weather.fromJson(x))),
      clouds: json["clouds"] == null ? null : Clouds.fromJson(json["clouds"]),
      wind: json["wind"] == null ? null : Wind.fromJson(json["wind"]),
      visibility: json["visibility"],
      pop: double.parse(json["pop"].toString()),
      rain: json["rain"] == null ? null : Rain.fromJson(json["rain"]),
      sys: json["sys"] == null ? null : Sys.fromJson(json["sys"]),
      dtTxt: DateTime.tryParse(json["dt_txt"] ?? ""),
    );
  }

  Map<String, dynamic> toJson() => {
        "dt": dt,
        "main": main?.toJson(),
        "weather": weather!.map((x) => x?.toJson()).toList(),
        "clouds": clouds?.toJson(),
        "wind": wind?.toJson(),
        "visibility": visibility,
        "pop": pop,
        "rain": rain?.toJson(),
        "sys": sys?.toJson(),
        "dt_txt": dtTxt?.toIso8601String(),
      };
}

class Clouds {
  Clouds({
    this.localId = 0,
    required this.all,
  });

  @Id()
  int? localId;
  final int? all;

  factory Clouds.fromJson(Map<String, dynamic> json) {
    return Clouds(
      all: json["all"],
    );
  }

  Map<String, dynamic> toJson() => {
        "all": all,
      };
}

class Main {
  Main({
    this.localId = 0,
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.seaLevel,
    required this.grndLevel,
    required this.humidity,
    required this.tempKf,
  });

  @Id()
  int? localId;
  final double? temp;
  final double? feelsLike;
  final double? tempMin;
  final double? tempMax;
  final int? pressure;
  final int? seaLevel;
  final int? grndLevel;
  final int? humidity;
  final double? tempKf;

  factory Main.fromJson(Map<String, dynamic> json) {
    return Main(
      temp: double.parse(json["temp"].toString()),
      feelsLike: double.parse(json["feels_like"].toString()),
      tempMin: double.parse(json["temp_min"].toString()),
      tempMax: double.parse(json["temp_max"].toString()),
      pressure: json["pressure"],
      seaLevel: json["sea_level"],
      grndLevel: json["grnd_level"],
      humidity: json["humidity"],
      tempKf: double.parse(json["temp_kf"].toString()),
    );
  }

  Map<String, dynamic> toJson() => {
        "temp": temp,
        "feels_like": feelsLike,
        "temp_min": tempMin,
        "temp_max": tempMax,
        "pressure": pressure,
        "sea_level": seaLevel,
        "grnd_level": grndLevel,
        "humidity": humidity,
        "temp_kf": tempKf,
      };
}

class Rain {
  Rain({
    this.localId = 0,
    required this.the3H,
  });

  @Id()
  int? localId;
  final double? the3H;

  factory Rain.fromJson(Map<String, dynamic> json) {
    return Rain(
      the3H: double.parse(json["3h"].toString()),
    );
  }

  Map<String, dynamic> toJson() => {
        "3h": the3H,
      };
}

class Sys {
  Sys({
    this.localId = 0,
    required this.pod,
  });

  @Id()
  int? localId;
  final String? pod;

  factory Sys.fromJson(Map<String, dynamic> json) {
    return Sys(
      pod: json["pod"],
    );
  }

  Map<String, dynamic> toJson() => {
        "pod": pod,
      };
}

class Weather {
  Weather({
    this.localId = 0,
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  @Id()
  int? localId;
  final int? id;
  final String? main;
  final String? description;
  final String? icon;

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      id: json["id"],
      main: json["main"],
      description: json["description"],
      icon: json["icon"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "main": main,
        "description": description,
        "icon": icon,
      };
}

class Wind {
  Wind({
    this.localId = 0,
    required this.speed,
    required this.deg,
    required this.gust,
  });

  @Id()
  int? localId;
  final double? speed;
  final int? deg;
  final double? gust;

  factory Wind.fromJson(Map<String, dynamic> json) {
    return Wind(
      speed: double.parse(json["speed"].toString()),
      deg: json["deg"],
      gust: json["gust"],
    );
  }

  Map<String, dynamic> toJson() => {
        "speed": speed,
        "deg": deg,
        "gust": gust,
      };
}
