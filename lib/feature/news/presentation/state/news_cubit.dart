import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_track/feature/news/data/model/news_model.dart';
import 'package:task_track/feature/news/domain/usecases/get_news.dart';

part 'news_state.dart';
part 'news_cubit.freezed.dart';

class NewsCubit extends Cubit<NewsState> {
  final GetNews _getNews;

  static const _initialNewsState = NewsState.initial(news: [], error: "");

  NewsCubit(this._getNews) : super(_initialNewsState);

  Future<void> getNews() async {
    emit(NewsState.loadingNews(news: [], error: ""));

    final res = await _getNews();

    res.fold((l) => emit(NewsState.error(news: [], error: l.message)), (r) {
      emit(NewsState.loadedNews(news: r ?? [], error: ""));
    });
  }
}
