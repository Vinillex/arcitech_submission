import 'package:arcitech_submission/entity/cache_entity.dart';
import 'package:arcitech_submission/entity/current_weather.dart';
import 'package:arcitech_submission/entity/five_days.dart';
import 'package:arcitech_submission/objectbox.g.dart';
import 'package:objectbox/objectbox.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

class ObjectBox {
  /// The Store of this app.
  late final Store _store;

  /// A Box of notes.
  static late final Box<CurrentWeatherEntity> _currentWeatherBox;
  static late final Box<FiveDaysEntity> _fiveDaysBox;
  static late final Box<CacheEntity> _cacheBox;

  ObjectBox._create(this._store) {
    _currentWeatherBox = Box<CurrentWeatherEntity>(_store);
    _fiveDaysBox = Box<FiveDaysEntity>(_store);
    _cacheBox = Box<CacheEntity>(_store);

    // Add some demo data if the box is empty.
    // if (_typeBox.isEmpty()) {
    //   _putDemoData();
    // }
  }

  /// Create an instance of ObjectBox to use throughout the app.
  static Future<ObjectBox> create() async {
    final store = await openStore(
        directory: p.join(
            (await getApplicationDocumentsDirectory()).path, "obx-demo"));
    return ObjectBox._create(store);
  }

  static Box<CurrentWeatherEntity> getCurrentWeather() => _currentWeatherBox;
  static Box<FiveDaysEntity> getFiveDaysWeather() => _fiveDaysBox;
  static Box<CacheEntity> getCache() => _cacheBox;
}
