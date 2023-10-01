import 'dart:convert';

import 'package:arcitech_submission/constants/app_constants.dart';
import 'package:arcitech_submission/entity/current_weather.dart';
import 'package:arcitech_submission/entity/five_days.dart';
import 'package:http/http.dart' as http;

class WeatherRemoteService {
  WeatherRemoteService();
// lat=44.34&lon=10.99&appid={API key}

  Future<CurrentWeatherEntity> getCurrentData(double lat, double lon) async {
    final String url =
        "${AppConstants.currentWeather}?${AppConstants.lat}=$lat&${AppConstants.lon}=$lon&${AppConstants.appid}=${AppConstants.apiKeys}";
    final Uri uri = Uri.parse(url);
    final headers = {'Content-Type': 'application/json'};
    final response = await http.get(uri, headers: headers);
    return CurrentWeatherEntity.fromJson(jsonDecode(response.body));
  }


  Future<FiveDaysEntity> getFiveDaysForecastData(
      double lat, double lon) async {
    final String url =
        "${AppConstants.fiveDays}?${AppConstants.lat}=$lat&${AppConstants.lon}=$lon&${AppConstants.appid}=${AppConstants.apiKeys}";
    final Uri uri = Uri.parse(url);
    final headers = {'Content-Type': 'application/json'};
    final response = await http.get(uri, headers: headers);
    return FiveDaysEntity.fromJson(jsonDecode(response.body));
  }
}
