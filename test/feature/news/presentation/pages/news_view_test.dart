import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:task_track/core/di/di_config.dart';
import 'package:task_track/core/presentation/state/cubit_providers.dart';
import 'package:task_track/feature/news/domain/usecases/get_news.dart';
import 'package:task_track/feature/news/presentation/pages/news_view.dart';
import 'package:task_track/feature/news/presentation/state/news_cubit.dart';

import '../../fixtures/news_data.dart';

class MockGetNews extends Mock implements GetNews {}

void main() {
  final getNews = MockGetNews();

  setUp(() {
    initInjectors();
  });

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    GetIt.I.reset();

    GetIt.I.registerLazySingleton<GetNews>(() => MockGetNews());
    final cubit = NewsCubit(getNews);

    expectLater(
        cubit,
        emitsInOrder(<NewsState>[
          NewsState.loadingNews(news: [], error: ""),
          NewsState.loadedNews(news: listOfNews, error: ""),
        ]));

    await cubit.getNews();

    await tester.pumpWidget(MaterialApp(
        home: MultiBlocProvider(providers: cubitProviders, child: NewsView())));
  });
}
