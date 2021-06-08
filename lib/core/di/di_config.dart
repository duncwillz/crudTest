import 'package:get_it/get_it.dart';
import 'package:task_track/feature/news/domain/di/injector.dart';
import 'package:task_track/feature/task/domain/di/injector.dart';

import 'core_di.dart';

GetIt inject = GetIt.instance;

/// Registration of service locators with GetIt
///
/// Add any of such injectors here
Future<void> initInjectors() async {
  await coreInjector();
  await newsInjector();
  await taskInjector();
}
