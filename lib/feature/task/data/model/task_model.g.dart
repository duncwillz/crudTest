// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskModel _$_$_TaskModelFromJson(Map<String, dynamic> json) {
  return _$_TaskModel(
    id: json['id'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    dateCompleted: json['completed_at'] == null
        ? null
        : DateTime.parse(json['completed_at'] as String),
  );
}

Map<String, dynamic> _$_$_TaskModelToJson(_$_TaskModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'completed_at': instance.dateCompleted?.toIso8601String(),
    };
