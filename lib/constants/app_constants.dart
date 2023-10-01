class AppConstants {
  static const String apiKeys = "487270d458e5fd634bfc832dd7a95e3d";

  static const String baseUrl = "https://api.openweathermap.org/";

//EndPoints
  static const String fiveDayEndPoint = "data/2.5/forecast";
  static const String currentEndPoint = "data/2.5/weather";

//Parameters
  static const String lat = "lat";
  static const String lon = "lon";
  static const String appid = "appid";

//Urls
  static const String fiveDays = baseUrl + fiveDayEndPoint;
  static const String currentWeather = baseUrl + currentEndPoint;
}
