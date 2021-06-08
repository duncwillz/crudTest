import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:task_track/core/data/database/database_service.dart';
import 'package:task_track/core/data/database/op_boxes.dart';
import 'package:task_track/core/data/network/network_exceptions.dart';
import 'package:task_track/core/data/network/network_service.dart';
import 'package:task_track/core/data/network/network_service_response.dart';
import 'package:task_track/feature/news/data/datasources/endpoints.dart';
import 'package:task_track/feature/news/data/datasources/news_local_datasource.dart';
import 'package:task_track/feature/news/data/datasources/news_remote_datasource.dart';

import '../../fixtures/news_data.dart';

class MockNetworkService extends Mock implements NetworkService {}

class MockDatabaseService extends Mock implements DatabaseService {}

void main() {
  NewsRemoteDataSourceImpl remoteTestSubject;
  NewsLocalDataSourceImpl localTestSubject;
  final networkService = MockNetworkService();
  final databaseService = MockDatabaseService();

  setUp(() {
    remoteTestSubject = NewsRemoteDataSourceImpl(networkService);
    localTestSubject = NewsLocalDataSourceImpl(databaseService);
  });

  group('getNews from Remote', () {
    test(' returns a successfully deserialised NewsModel from server',
        () async {
      when(networkService.get(NewsEndpoint.news,
              queryParameters: anyNamed('queryParameters')))
          .thenAnswer((_) async => NetworkServiceResponse(
              result: NetworkResult.SUCCESS, data: newsJson));

      final result = await remoteTestSubject.getNews();
      expect(result.first.author, listOfNews.first.author);
    });

    group('Error handling', () {
      test('Throws an ApiResponseException on server error', () {
        when(networkService.get(NewsEndpoint.news,
                queryParameters: anyNamed('queryParameters')))
            .thenAnswer((_) async => NetworkServiceResponse(
                result: NetworkResult.BAD_REQUEST,
                data: {"statusCode": 404, "message": "Bad Request Not Found"}));
        expect(() => remoteTestSubject.getNews(),
            throwsA(isA<ApiResponseException>()));
      });

      test('Throws an Exception on unexpected exception', () {
        when(networkService.get(NewsEndpoint.news,
                queryParameters: anyNamed('queryParameters')))
            .thenThrow(Exception());
        expect(() => remoteTestSubject.getNews(), throwsA(isA<Exception>()));
      });
    });
  });

  group('getNews from Local', () {
    test(' returns a successfully deserialised NewsModel from local', () async {
      when(databaseService.retrieve(
              collection: NewsBox(), notFoundDefault: null))
          .thenAnswer((_) async => newsJson);

      final result = await localTestSubject.getNews();
      expect(result, listOfNews);
    });
  });
}
