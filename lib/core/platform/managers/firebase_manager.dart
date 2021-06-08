import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:task_track/core/platform/string_constants.dart';
import 'package:task_track/feature/task/data/model/task_model.dart';

abstract class FirebaseManager {
  Future<List<TaskModel>> getTask();
  Future<void> addTask(TaskModel model);
  Future<void> updateTask(TaskModel model);
  Future<void> deleteTask(TaskModel model);
  Stream<QuerySnapshot> taskStream();
}

class FirebaseManagerImpl implements FirebaseManager {
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
  CollectionReference get tasksRef =>
      FirebaseFirestore.instance.collection(AppString.firebaseCollectionName);
  List<TaskModel> tasks = [];

  @override
  Future<void> addTask(TaskModel model) =>
      tasksRef.doc(model.id).set(model.toJson());

  @override
  Future<void> deleteTask(TaskModel model) async =>
      tasksRef.doc(model.id).delete();

  @override
  Future<List<TaskModel>> getTask() async {
    QuerySnapshot snapshot = await tasksRef.get();
    snapshot.docs.forEach((doc) {
      var banner = TaskModel.fromJson(doc.data());
      tasks.add(banner);
    });
    return tasks;
  }

  @override
  Future<void> updateTask(TaskModel model) async =>
      tasksRef.doc(model.id).update(model.toJson());

  @override
  Stream<QuerySnapshot> taskStream() =>
      firestore.collection(AppString.firebaseCollectionName).snapshots();
}
