import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_track/core/di/di_config.dart';
import 'package:task_track/core/platform/managers/firebase_manager.dart';
import 'package:task_track/feature/task/data/model/task_model.dart';
import 'package:task_track/feature/task/domain/usecases/add_task.dart';
import 'package:task_track/feature/task/domain/usecases/delete_task.dart';
import 'package:task_track/feature/task/domain/usecases/update_task.dart';

part 'task_state.dart';
part 'task_cubit.freezed.dart';

class TaskCubit extends Cubit<TaskState> {
  final DeleteTask _delete;
  final UpdateTask _update;
  final AddTask _add;

  static const _initialTaskState = TaskState.initial(payload: [], error: "");

  TaskCubit(this._delete, this._add, this._update) : super(_initialTaskState) {
    inject<FirebaseManager>().taskStream().listen((QuerySnapshot event) {
      List<TaskModel> tasks = [];
      event.docs.forEach((doc) {
        tasks.add(TaskModel.fromJson(doc.data()));
      });
      emit(TaskState.taskUpdated(payload: tasks, error: state.error));
    });
  }

  Future<void> delete(TaskModel task) async {
    emit(TaskState.loadingTask(
      payload: state.payload,
      error: state.error,
    ));

    final res = await _delete(task);

    res.fold(
        (l) => emit(TaskState.error(payload: state.payload, error: l.message)),
        (r) {
      if (r) {
        emit(TaskState.taskUpdated(
          payload: state.payload,
          error: state.error,
        ));
      }
    });
  }

  Future<void> add(TaskModel task) async {
    final res = await _add(task);

    res.fold(
        (l) => emit(TaskState.error(payload: state.payload, error: l.message)),
        (r) {
      if (r) {
        emit(TaskState.taskUpdated(
          payload: state.payload,
          error: state.error,
        ));
      }
    });
  }

  Future<void> update(TaskModel task) async {
    final res = await _update(task);

    res.fold(
        (l) => emit(TaskState.error(payload: state.payload, error: l.message)),
        (r) {
      if (r) {
        emit(TaskState.taskUpdated(
          payload: state.payload,
          error: state.error,
        ));
      }
    });
  }
}
