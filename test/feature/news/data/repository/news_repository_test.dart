import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:task_track/feature/news/data/datasources/news_local_datasource.dart';
import 'package:task_track/feature/news/data/datasources/news_remote_datasource.dart';
import 'package:task_track/feature/news/data/repositories/news_repository_impl.dart';

import '../../fixtures/news_data.dart';

class MockNewsRemoteDataSource extends Mock implements NewsRemoteDataSource {}

class MockNewsLocalDataSource extends Mock implements NewsLocalDataSource {}

void main() {
  NewsRepositoryImpl testSubject;
  final remoteDatasource = MockNewsRemoteDataSource();
  final localDatasource = MockNewsLocalDataSource();

  setUp(() {
    testSubject = NewsRepositoryImpl(remoteDatasource, localDatasource);
  });

  group('get news Url', () {
    test(' calls remoteDatasource\'s to shorten url', () {
      testSubject.getNews();

      verify(remoteDatasource.getNews());
      verifyNoMoreInteractions(remoteDatasource);

      clearInteractions(remoteDatasource);
    });

    test(' returns a UrlResultsModel from server', () async {
      when(remoteDatasource.getNews()).thenAnswer((_) async => listOfNews);
      final news = await testSubject.getNews();

      expect(news, listOfNews);
    });
  });
}
