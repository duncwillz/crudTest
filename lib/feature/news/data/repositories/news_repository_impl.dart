import 'package:task_track/core/utils/data/datasource_call_wrapper.dart';
import 'package:task_track/feature/news/data/datasources/news_local_datasource.dart';
import 'package:task_track/feature/news/data/datasources/news_remote_datasource.dart';
import 'package:task_track/feature/news/data/model/news_model.dart';
import 'package:task_track/feature/news/domain/repositories/news_repository.dart';

class NewsRepositoryImpl implements NewsRepository {
  final NewsRemoteDataSource _remoteDataSource;
  final NewsLocalDataSource _localDataSource;
  NewsRepositoryImpl(this._remoteDataSource, this._localDataSource);

  @override
  Future<List<NewsModel>> getNews() async {
    try {
      final res = await remoteDataSourceResponseWrapper<List<NewsModel>>(
          () => _remoteDataSource.getNews(),
          source: "getNews");
      if (res != null && res.isNotEmpty) {
        await localDataSourceResponseWrapper(
            () => _localDataSource.saveNews(res),
            source: "getNews");
        return res;
      }
    } catch (e) {
      final localRes = await localDataSourceResponseWrapper(
          () => _localDataSource.getNews(),
          source: "getNews");
      if (localRes != null) {
        return localRes;
      } else {
        rethrow;
      }
    }
  }
}
