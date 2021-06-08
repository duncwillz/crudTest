import 'package:dartz/dartz.dart';
import 'package:task_track/core/data/exceptions/app_exceptions.dart';
import 'package:task_track/core/presentation/domain/ui_exceptions.dart';
import 'package:task_track/core/presentation/domain/usercase_typedefs.dart';
import 'package:task_track/core/utils/error_helpers.dart';
import 'package:task_track/feature/task/data/model/task_model.dart';
import 'package:task_track/feature/task/domain/repositories/task_repository.dart';

/// Requires [String] id and returns a boolean
class AddTask implements UseCase<bool, TaskModel> {
  AddTask(this._repo);
  final TaskRepository _repo;

  @override
  Future<Either<UIError, bool>> call([params]) async {
    UseCase.assertParamsRequired(params);
    try {
      final res = await _repo.saveTask(params);

      return Right(res);
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
