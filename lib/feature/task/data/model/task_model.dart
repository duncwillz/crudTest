import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
abstract class TaskModel with _$TaskModel {
  const factory TaskModel({
    String id,
    String title,
    String description,
    @JsonKey(name: 'completed_at') DateTime dateCompleted,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map json) => _$TaskModelFromJson(
      Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}
