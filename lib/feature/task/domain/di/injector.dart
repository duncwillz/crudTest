import 'package:task_track/core/di/di_config.dart';
import 'package:task_track/core/platform/managers/firebase_manager.dart';
import 'package:task_track/feature/task/data/repositories/task_repository_impl.dart';
import 'package:task_track/feature/task/domain/repositories/task_repository.dart';
import 'package:task_track/feature/task/domain/usecases/add_task.dart';
import 'package:task_track/feature/task/domain/usecases/delete_task.dart';
import 'package:task_track/feature/task/domain/usecases/update_task.dart';

Future<void> taskInjector() async {
  inject.registerLazySingleton<FirebaseManager>(() => FirebaseManagerImpl());
  inject.registerLazySingleton<TaskRepository>(
      () => TaskRepositoryImpl(inject()));

  inject.registerLazySingleton<DeleteTask>(() => DeleteTask(inject()));
  inject.registerLazySingleton<UpdateTask>(() => UpdateTask(inject()));
  inject.registerLazySingleton<AddTask>(() => AddTask(inject()));
}
