import 'dart:async';
import 'dart:convert';

import 'package:task_track/core/data/database/database_service.dart';
import 'package:task_track/core/data/database/op_boxes.dart';
import 'package:task_track/core/data/datasources/local_datasource_base.dart';
import 'package:task_track/feature/news/data/model/news_model.dart';

abstract class NewsLocalDataSource extends LocalDataSource {
  Future<void> saveNews(List<NewsModel> news);
  Future<List<NewsModel>> getNews();
  Future<void> clearDb();
}

class NewsLocalDataSourceImpl implements NewsLocalDataSource {
  DatabaseService _databaseService;
  NewsLocalDataSourceImpl(this._databaseService);

  @override
  void dispose() {}

  @override
  StreamController get dataStreamController => throw UnimplementedError();

  @override
  Future<List<NewsModel>> getNews() async {
    final res = await _databaseService.retrieve(
        collection: NewsBox(), key: NewsBox().id, notFoundDefault: []);
    List<NewsModel> news = [];
    try {
      if (res.isNotEmpty) {
        List<dynamic> newsModel = res["data"];
        news.addAll(newsModel
            .map((asset) =>
                NewsModel.fromJson(jsonDecode(json.encode(asset)) as Map))
            .toList());
      }
    } catch (e) {
      rethrow;
    }
    return news;
  }

  @override
  Future<void> saveNews(List<NewsModel> news) async {
    await clearDb();
    await _databaseService.create(
      collection: NewsBox(),
      key: NewsBox().id,
      value: news.map((model) => model.toJson()).toList(),
    );
  }

  @override
  Future<void> clearDb() async {
    await _databaseService.delete(
      collection: NewsBox(),
      key: NewsBox().id,
    );
  }
}
