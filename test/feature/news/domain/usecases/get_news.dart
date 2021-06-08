import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:task_track/core/data/exceptions/app_exceptions.dart';
import 'package:task_track/feature/news/domain/repositories/news_repository.dart';
import 'package:task_track/feature/news/domain/usecases/get_news.dart';

import '../../fixtures/news_data.dart';

class MockNewsRepository extends Mock implements NewsRepository {}

void main() {
  GetNews testSubject;

  MockNewsRepository repository;

  setUp(() {
    repository = MockNewsRepository();
    testSubject = GetNews(repository);
  });

  group('News Repository', () {
    test('News calls NewsRepository\'s getNews', () {
      testSubject();

      verify(repository.getNews());
      verifyNoMoreInteractions(repository);
      clearInteractions(repository);
    });

    test('getNews runs successfully', () async {
      when(repository.getNews()).thenAnswer((_) async => listOfNews);

      final result = await testSubject();

      expect(result.isRight(), true);
      result.fold(null, (r) => expect(r, listOfNews));
    });
    // Test failures
  });

  test('get news returns an error message upon network failure', () async {
    // Test NetworkFailure handling
    when(repository.getNews()).thenThrow(NetworkFailure('message'));

    final result = await testSubject();

    expect(result.isLeft(), true);
    result.fold((l) => expect(l.message, 'message'), null);
  });

  test('getNews returns an error message upon cache failure', () async {
    // Test CacheFailure handling
    when(repository.getNews()).thenThrow(CacheFailure('message'));

    final result2 = await testSubject();

    expect(result2.isLeft(), true);
    result2.fold((l) => expect(l.message, 'message'), null);
  });
}
