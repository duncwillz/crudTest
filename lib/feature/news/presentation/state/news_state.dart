part of 'news_cubit.dart';

@freezed
abstract class NewsState with _$NewsState {
  const factory NewsState.initial(
      {@required List<NewsModel> news,
      @required String error}) = _InitialNewsState;
  const factory NewsState.error(
      {@required List<NewsModel> news,
      @required String error}) = _ErrorNewsState;
  const factory NewsState.loadingNews(
      {@required List<NewsModel> news,
      @required String error}) = _LoadingNewsState;
  const factory NewsState.loadedNews(
      {@required List<NewsModel> news,
      @required String error}) = _LoadedNewsState;
}
