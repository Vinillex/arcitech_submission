import 'package:arcitech_submission/entity/current_weather.dart';
import 'package:arcitech_submission/init/dependency.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentWeatherNotifier = StateNotifierProvider<CurrentWeatherNotifier,
    AsyncValue<CurrentWeatherEntity>>(
  (ref) {
    return CurrentWeatherNotifier();
  },
);

class CurrentWeatherNotifier
    extends StateNotifier<AsyncValue<CurrentWeatherEntity>> {
  CurrentWeatherNotifier() : super(AsyncLoading());

  Future getCurrentData() async {
    try {
      final entity = await weatherUseCase.getCurrentWeather();
      state = AsyncValue.data(entity);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}
