import 'package:arcitech_submission/entity/current_weather.dart';
import 'package:arcitech_submission/entity/five_days.dart';
import 'package:arcitech_submission/init/object_box.dart';

class WeatherLocalService {
  CurrentWeatherEntity? getCurrentWeather() {
    final list = ObjectBox.getCurrentWeather().getAll();
    if (list.isNotEmpty) {
      return list[0];
    } else {
      return null;
    }
  }

  deleteCurrentWeather() {
    ObjectBox.getCurrentWeather().removeAll();
  }

  addCurrentWeather(CurrentWeatherEntity entity) {
    ObjectBox.getCurrentWeather().put(entity);
  }

  FiveDaysEntity? getFiveDaysWeather() {
    final list = ObjectBox.getFiveDaysWeather().getAll();
    if (list.isNotEmpty) {
      return list[0];
    } else {
      return null;
    }
  }

  deleteFiveDaysWeather() {
    ObjectBox.getFiveDaysWeather().removeAll();
  }

  addFiveDaysWeather(FiveDaysEntity entity) {
    ObjectBox.getFiveDaysWeather().put(entity);
  }
}
