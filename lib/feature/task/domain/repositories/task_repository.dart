/// Importing [required] from the flutter material library
import 'package:flutter/material.dart' show required;
import 'package:task_track/feature/task/data/model/task_model.dart';

abstract class TaskRepository {
  Future<List<TaskModel>> getTask();
  Future<bool> deleteTask(TaskModel model);
  Future<bool> updateTask(TaskModel model);
  Future<bool> saveTask(TaskModel model);
}
