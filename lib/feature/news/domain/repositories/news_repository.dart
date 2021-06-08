/// Importing [required] from the flutter material library
import 'package:flutter/material.dart' show required;
import 'package:task_track/feature/news/data/model/news_model.dart';

abstract class NewsRepository {
  Future<List<NewsModel>> getNews();
}
