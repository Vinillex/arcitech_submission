import 'dart:convert';

import 'package:objectbox/objectbox.dart';

List<dynamic> listWeatherElementToJson(List<WeatherElement> entity) =>
    entity.isNotEmpty ? entity.map((e) => e.toJson()).toList() : [];

@Entity()
class CurrentWeatherEntity {
  CurrentWeatherEntity({
    this.localId = 0,
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
   // this.rain,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });

  @Id()
  int? localId;
  Coord? coord;
  List<WeatherElement>? weather;
  String? base;
  Main? main;
  int? visibility;
  Wind? wind;
 // Rain? rain;
  Clouds? clouds;
  int? dt;
  Sys? sys;
  int? timezone;
  int? id;
  String? name;
  int? cod;

  String get dbSysData => jsonEncode(sys!.toJson());

  set dbSysData(String value) => sys = Sys.fromJson(jsonDecode(value));

  String get dbCloudsData => jsonEncode(clouds!.toJson());

  set dbCloudsData(String value) => clouds = Clouds.fromJson(jsonDecode(value));

  // String get dbRainData => rain != null ? jsonEncode(rain!.toJson()) : '{"1h": null}';

  // set dbRainData(String value) => rain = Rain.fromJson(jsonDecode(value));

  String get dbWindData => jsonEncode(wind!.toJson());

  set dbWindData(String value) => wind = Wind.fromJson(jsonDecode(value));

  String get dbMainData => jsonEncode(main!.toJson());

  set dbMainData(String value) => main = Main.fromJson(jsonDecode(value));

  String get dbCoordData => jsonEncode(coord!.toJson());

  set dbCoordData(String value) => coord = Coord.fromJson(jsonDecode(value));

  String get dbWeatherList => jsonEncode(listWeatherElementToJson(weather!));

  set dbWeatherList(String value) => weather = List.from(json.decode(value))
      .map((e) => WeatherElement.fromJson(e))
      .toList();

  factory CurrentWeatherEntity.fromJson(Map<String, dynamic> json) {
    return CurrentWeatherEntity(
      coord: json["coord"] == null ? null : Coord.fromJson(json["coord"]),
      weather: json["weather"] == null
          ? []
          : List<WeatherElement>.from(
              json["weather"]!.map((x) => WeatherElement.fromJson(x))),
      base: json["base"],
      main: json["main"] == null ? null : Main.fromJson(json["main"]),
      visibility: json["visibility"],
      wind: json["wind"] == null ? null : Wind.fromJson(json["wind"]),
      //rain: json["rain"] == null ? null : Rain.fromJson(json["rain"]),
      clouds: json["clouds"] == null ? null : Clouds.fromJson(json["clouds"]),
      dt: json["dt"],
      sys: json["sys"] == null ? null : Sys.fromJson(json["sys"]),
      timezone: json["timezone"],
      id: json["id"],
      name: json["name"],
      cod: json["cod"],
    );
  }

  Map<String, dynamic> toJson() => {
        "coord": coord?.toJson(),
        "weather": weather?.map((x) => x?.toJson()).toList(),
        "base": base,
        "main": main?.toJson(),
        "visibility": visibility,
        "wind": wind?.toJson(),
        //"rain": rain?.toJson(),
        "clouds": clouds?.toJson(),
        "dt": dt,
        "sys": sys?.toJson(),
        "timezone": timezone,
        "id": id,
        "name": name,
        "cod": cod,
      };
}

class Clouds {
  Clouds({
    this.localId = 0,
    required this.all,
  });

  @Id()
  int? localId;
  int? all;

  factory Clouds.fromJson(Map<String, dynamic> json) {
    return Clouds(
      all: json["all"],
    );
  }

  Map<String, dynamic> toJson() => {
        "all": all,
      };
}

class Coord {
  Coord({
    this.localId = 0,
    required this.lon,
    required this.lat,
  });

  @Id()
  int? localId;
  double? lon;
  double? lat;

  factory Coord.fromJson(Map<String, dynamic> json) {
    return Coord(
      lon: json["lon"],
      lat: json["lat"],
    );
  }

  Map<String, dynamic> toJson() => {
        "lon": lon,
        "lat": lat,
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
    required this.humidity,
    required this.seaLevel,
    required this.grndLevel,
  });

  @Id()
  int? localId;
  double? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  int? pressure;
  int? humidity;
  int? seaLevel;
  int? grndLevel;

  factory Main.fromJson(Map<String, dynamic> json) {
    return Main(
      temp: json["temp"],
      feelsLike: json["feels_like"],
      tempMin: json["temp_min"],
      tempMax: json["temp_max"],
      pressure: json["pressure"],
      humidity: json["humidity"],
      seaLevel: json["sea_level"],
      grndLevel: json["grnd_level"],
    );
  }

  Map<String, dynamic> toJson() => {
        "temp": temp,
        "feels_like": feelsLike,
        "temp_min": tempMin,
        "temp_max": tempMax,
        "pressure": pressure,
        "humidity": humidity,
        "sea_level": seaLevel,
        "grnd_level": grndLevel,
      };
}

// class Rain {
//   Rain({
//     this.localId = 0,
//     required this.the1H,
//   });

//   @Id()
//   int? localId;
//   double? the1H;

//   factory Rain.fromJson(Map<String, dynamic> json) {
//     return Rain(
//       the1H: json["1h"],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         "1h": the1H,
//       };
// }

class Sys {
  Sys({
    this.localId = 0,
    required this.type,
    required this.id,
    required this.country,
    required this.sunrise,
    required this.sunset,
  });

  @Id()
  int? localId;
  int? type;
  int? id;
  String? country;
  int? sunrise;
  int? sunset;

  factory Sys.fromJson(Map<String, dynamic> json) {
    return Sys(
      type: json["type"],
      id: json["id"],
      country: json["country"],
      sunrise: json["sunrise"],
      sunset: json["sunset"],
    );
  }

  Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
        "country": country,
        "sunrise": sunrise,
        "sunset": sunset,
      };
}

class WeatherElement {
  WeatherElement({
    this.localId = 0,
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  @Id()
  int? localId;
  int? id;
  String? main;
  String? description;
  String? icon;

  factory WeatherElement.fromJson(Map<String, dynamic> json) {
    return WeatherElement(
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
  double? speed;
  int? deg;
  double? gust;

  factory Wind.fromJson(Map<String, dynamic> json) {
    return Wind(
      speed: json["speed"],
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
