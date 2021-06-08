import 'dart:async';
import 'dart:math';
import 'package:task_track/core/data/datasources/local_datasource_base.dart';
import 'package:task_track/core/data/network/network_service.dart';
import 'package:task_track/core/data/network/network_service_response.dart';
import 'package:task_track/core/utils/logger.dart';
import 'package:task_track/feature/news/data/model/news_model.dart';

import 'endpoints.dart';

abstract class NewsRemoteDataSource extends LocalDataSource {
  Future<List<NewsModel>> getNews();
}

class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  final NetworkService _networkService;

  NewsRemoteDataSourceImpl(this._networkService);

  @override
  StreamController get dataStreamController => throw UnimplementedError();

  @override
  void dispose() {}

  @override
  Future<List<NewsModel>> getNews() async {
    final NetworkServiceResponse networkResponse =
        await _networkService.get(NewsEndpoint.news, queryParameters: {
      //These information can be va
      "q": "bitcoin",
      "apiKey": "460e6f591aaa4ad49c08da1d96b47c1f"
    });
    final newsResponse = handleNetworkResponse(networkResponse)["articles"];
    List<NewsModel> news = [];
    newsResponse.forEach((e) {
      news.add(NewsModel.fromJson(e));
    });
    return news;
  }
}
