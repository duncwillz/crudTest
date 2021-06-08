import 'package:flutter_test/flutter_test.dart';
import 'package:task_track/feature/news/data/model/news_model.dart';

import '../../fixtures/news_data.dart';

void main() {
  test('fromJson returns a newsJson', () {
    List<NewsModel> news = [];
    newsJson["articles"].forEach((model) {
      news.add(NewsModel.fromJson(model));
    });
    expect(news.first.author, listOfNews.first.author);
  });
}
