import 'package:arcitech_submission/entity/cache_entity.dart';
import 'package:arcitech_submission/entity/current_weather.dart';
import 'package:arcitech_submission/entity/five_days.dart';
import 'package:arcitech_submission/init/dependency.dart';
import 'package:geolocator/geolocator.dart';

class WeatherUseCase {
  Future<CurrentWeatherEntity> getCurrentWeather() async {
    Position? position;
    CurrentWeatherEntity? entity;
    final cache = cacheService.getCache('current');
    entity = weatherLocalService.getCurrentWeather();
    if (cache == null ||
        cache!.dateTime!.isBefore(DateTime.now()) ||
        entity == null) {
      position = await _determinePosition();
      entity = await weatherRemoteService.getCurrentData(
          position.latitude, position.longitude);
      cacheService.addCache(
        CacheEntity(
          typeName: 'current',
          dateTime: DateTime.now().add(
            const Duration(hours: 1),
          ),
        ),
      );
      weatherLocalService.addCurrentWeather(entity);
    }
    return entity;
  }

  Future<FiveDaysEntity> getFiveDaysWeather() async {
    Position? position;
    FiveDaysEntity? entity;
    final cache = cacheService.getCache('fiveDays');
    entity = weatherLocalService.getFiveDaysWeather();
    if (cache == null ||
        cache!.dateTime!.isBefore(DateTime.now()) ||
        entity == null) {
      position = await _determinePosition();
      entity = await weatherRemoteService.getFiveDaysForecastData(
          position.latitude, position.longitude);
      cacheService.addCache(
        CacheEntity(
          typeName: 'fiveDays',
          dateTime: DateTime.now().add(
            const Duration(hours: 3),
          ),
        ),
      );
      weatherLocalService.addFiveDaysWeather(entity);
    }
    return entity;
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition();
  }
}
