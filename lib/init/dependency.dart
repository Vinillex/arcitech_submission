import 'package:arcitech_submission/service/cache_service.dart';
import 'package:arcitech_submission/service/weather_local_service.dart';
import 'package:arcitech_submission/service/weather_remote_service.dart';
import 'package:arcitech_submission/use_case/weather_use_case.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void registerDependencies() {
  //Local Services //
  getIt.registerSingleton<WeatherRemoteService>(WeatherRemoteService());
  getIt.registerSingleton<WeatherLocalService>(WeatherLocalService());
  getIt.registerSingleton<CacheService>(CacheService());
  // //Local Services End//

  //Use Cases
  getIt.registerSingleton<WeatherUseCase>(WeatherUseCase());
  //Use Cases End

  getIt.registerSingleton<GlobalKey>(GlobalKey<ScaffoldMessengerState>());
  getIt.registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage());

  // getIt.registerSingleton<KeyStore>(KeyStore());
}

final weatherRemoteService = getIt.get<WeatherRemoteService>();
final weatherLocalService = getIt.get<WeatherLocalService>();
final cacheService = getIt.get<CacheService>();

final weatherUseCase = getIt.get<WeatherUseCase>();

final globalKey = getIt.get<GlobalKey>();
final flutterSecureStorage = getIt.get<FlutterSecureStorage>();
// final keyStore = getIt.get<KeyStore>();
