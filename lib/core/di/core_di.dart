import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_track/core/data/database/database_service.dart';
import 'package:task_track/core/data/database/database_service_impl.dart';
import 'package:task_track/core/data/network/network_config.dart';
import 'package:task_track/core/data/network/network_interceptor.dart';
import 'package:task_track/core/data/network/network_service.dart';
import 'package:task_track/core/data/network/network_service_impl.dart';

import 'di_config.dart';

Future<void> coreInjector() async {
  inject.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());
  inject.registerFactory<BaseNetworkInterceptor>(
      () => BaseNetworkInterceptor(networkConfigInterface: inject()));

  inject.registerFactory<NetworkConfig>(() => NetworkConfigImpl());
  inject.registerLazySingleton<NetworkService>(
    () => NetworkServiceImpl(
        networkConfiguration: inject(), interceptor: inject()),
  );
  inject.registerLazySingleton<DatabaseService>(() => LocalDatabaseService());
}
