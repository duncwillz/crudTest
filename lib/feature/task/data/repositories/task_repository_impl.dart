import 'package:task_track/core/platform/managers/firebase_manager.dart';
import 'package:task_track/feature/task/data/model/task_model.dart';
import 'package:task_track/feature/task/domain/repositories/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  final FirebaseManager _firebaseManager;
  TaskRepositoryImpl(this._firebaseManager);

  @override
  Future<List<TaskModel>> getTask() async => _firebaseManager.getTask();

  @override
  Future<bool> saveTask(TaskModel model) async {
    try {
      _firebaseManager.addTask(model);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> updateTask(TaskModel model) async {
    try {
      _firebaseManager.updateTask(model);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> deleteTask(TaskModel model) async {
    try {
      _firebaseManager.deleteTask(model);
      return true;
    } catch (e) {
      return false;
    }
  }
}
