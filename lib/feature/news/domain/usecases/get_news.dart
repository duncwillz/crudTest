import 'package:dartz/dartz.dart';
import 'package:task_track/core/data/exceptions/app_exceptions.dart';
import 'package:task_track/core/presentation/domain/ui_exceptions.dart';
import 'package:task_track/core/presentation/domain/usercase_typedefs.dart';
import 'package:task_track/core/utils/error_helpers.dart';
import 'package:task_track/feature/news/data/model/news_model.dart';
import 'package:task_track/feature/news/domain/repositories/news_repository.dart';

/// Requires [String] id and returns a boolean
class GetNews implements UseCase<List<NewsModel>, String> {
  GetNews(this._repo);
  final NewsRepository _repo;

  @override
  Future<Either<UIError, List<NewsModel>>> call([params]) async {
    try {
      final res = await _repo.getNews();

      return Right(res);
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
