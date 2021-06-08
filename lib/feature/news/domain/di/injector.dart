import 'package:task_track/core/di/di_config.dart';
import 'package:task_track/feature/news/data/datasources/news_local_datasource.dart';
import 'package:task_track/feature/news/data/datasources/news_remote_datasource.dart';
import 'package:task_track/feature/news/data/repositories/news_repository_impl.dart';
import 'package:task_track/feature/news/domain/repositories/news_repository.dart';
import 'package:task_track/feature/news/domain/usecases/get_news.dart';

Future<void> newsInjector() async {
  inject.registerLazySingleton<NewsRemoteDataSource>(
      () => NewsRemoteDataSourceImpl(inject()));
  inject.registerLazySingleton<NewsLocalDataSource>(
      () => NewsLocalDataSourceImpl(inject()));
  inject.registerLazySingleton<NewsRepository>(
      () => NewsRepositoryImpl(inject(), inject()));
  inject.registerLazySingleton<GetNews>(() => GetNews(inject()));
}
