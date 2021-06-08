part of 'task_cubit.dart';

@freezed
abstract class TaskState with _$TaskState {
  const factory TaskState.initial(
      {@required List<TaskModel> payload,
      @required String error}) = _InitialTaskState;
  const factory TaskState.error(
      {@required List<TaskModel> payload,
      @required String error}) = _ErrorTaskState;
  const factory TaskState.loadingTask(
      {@required List<TaskModel> payload,
      @required String error}) = _LoadingTaskState;
  const factory TaskState.taskUpdated(
      {@required List<TaskModel> payload,
      @required String error}) = _LoadedTaskState;
}
