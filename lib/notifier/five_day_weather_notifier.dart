import 'package:arcitech_submission/entity/current_weather.dart';
import 'package:arcitech_submission/entity/five_days.dart';
import 'package:arcitech_submission/init/dependency.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fiveDayNotifier = StateNotifierProvider<FiveDayNotifier,
    AsyncValue<FiveDaysEntity>>(
  (ref) {
    return FiveDayNotifier();
  },
);

class FiveDayNotifier
    extends StateNotifier<AsyncValue<FiveDaysEntity>> {
  FiveDayNotifier() : super(AsyncLoading());

  Future getFiveDaysData() async {
    try {
      final entity = await weatherUseCase.getFiveDaysWeather();
      state = AsyncValue.data(entity);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}
