import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:task_track/core/presentation/domain/ui_exceptions.dart';
import 'package:task_track/feature/news/domain/usecases/get_news.dart';
import 'package:task_track/feature/news/presentation/state/news_cubit.dart';

import '../../../../core/mock_hydrated_block.dart';
import '../../fixtures/news_data.dart';

class MockGetNews extends Mock implements GetNews {}

Future<void> main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  HydratedCubit.storage = FakeHydratedStorage();

  final getNews = MockGetNews();

  when(getNews.call()).thenAnswer((_) async => Right(listOfNews));

  group('News Cubit', () {
    test(
      'Initial behaviour: NewsCubit is initialised with empty list (and reads cached data from hydrated storage)',
      () {
        final cubit = NewsCubit(getNews);
        expect(cubit.state.news, []);
      },
    );
  });

  group("News cubit", () {
    test(
        'News cubit get news emits loading, then loaded, with payload populated with returned data',
        () async {
      final cubit = NewsCubit(getNews);

      // ignore: unawaited_futures
      expectLater(
          cubit,
          emitsInOrder(<NewsState>[
            NewsState.loadingNews(news: [], error: ""),
            NewsState.loadedNews(news: listOfNews, error: ""),
          ]));

      await cubit.getNews();

      verify(getNews.call());
    });

    test(
        'NewsCubit get news emits loading, then error, with error message, if something goes wrong',
        () async {
      final cubit = NewsCubit(getNews);

      when(getNews.call(any))
          .thenAnswer((_) async => const Left(UIError('error')));

      // ignore: unawaited_futures
      expectLater(
          cubit,
          emitsInOrder(<NewsState>[
            NewsState.loadingNews(news: [], error: ""),
            NewsState.error(news: [], error: "error"),
          ]));

      await cubit.getNews();

      verify(getNews.call());
    });
  });
}
