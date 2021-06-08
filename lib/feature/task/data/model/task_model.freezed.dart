// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
class _$TaskModelTearOff {
  const _$TaskModelTearOff();

// ignore: unused_element
  _TaskModel call(
      {String id,
      String title,
      String description,
      @JsonKey(name: 'completed_at') DateTime dateCompleted}) {
    return _TaskModel(
      id: id,
      title: title,
      description: description,
      dateCompleted: dateCompleted,
    );
  }

// ignore: unused_element
  TaskModel fromJson(Map<String, Object> json) {
    return TaskModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TaskModel = _$TaskModelTearOff();

/// @nodoc
mixin _$TaskModel {
  String get id;
  String get title;
  String get description;
  @JsonKey(name: 'completed_at')
  DateTime get dateCompleted;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TaskModelCopyWith<TaskModel> get copyWith;
}

/// @nodoc
abstract class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) then) =
      _$TaskModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String description,
      @JsonKey(name: 'completed_at') DateTime dateCompleted});
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res> implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

  final TaskModel _value;
  // ignore: unused_field
  final $Res Function(TaskModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object dateCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      dateCompleted: dateCompleted == freezed
          ? _value.dateCompleted
          : dateCompleted as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$TaskModelCopyWith<$Res> implements $TaskModelCopyWith<$Res> {
  factory _$TaskModelCopyWith(
          _TaskModel value, $Res Function(_TaskModel) then) =
      __$TaskModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String description,
      @JsonKey(name: 'completed_at') DateTime dateCompleted});
}

/// @nodoc
class __$TaskModelCopyWithImpl<$Res> extends _$TaskModelCopyWithImpl<$Res>
    implements _$TaskModelCopyWith<$Res> {
  __$TaskModelCopyWithImpl(_TaskModel _value, $Res Function(_TaskModel) _then)
      : super(_value, (v) => _then(v as _TaskModel));

  @override
  _TaskModel get _value => super._value as _TaskModel;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object dateCompleted = freezed,
  }) {
    return _then(_TaskModel(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      dateCompleted: dateCompleted == freezed
          ? _value.dateCompleted
          : dateCompleted as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TaskModel implements _TaskModel {
  const _$_TaskModel(
      {this.id,
      this.title,
      this.description,
      @JsonKey(name: 'completed_at') this.dateCompleted});

  factory _$_TaskModel.fromJson(Map<String, dynamic> json) =>
      _$_$_TaskModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'completed_at')
  final DateTime dateCompleted;

  @override
  String toString() {
    return 'TaskModel(id: $id, title: $title, description: $description, dateCompleted: $dateCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.dateCompleted, dateCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.dateCompleted, dateCompleted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(dateCompleted);

  @JsonKey(ignore: true)
  @override
  _$TaskModelCopyWith<_TaskModel> get copyWith =>
      __$TaskModelCopyWithImpl<_TaskModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TaskModelToJson(this);
  }
}

abstract class _TaskModel implements TaskModel {
  const factory _TaskModel(
      {String id,
      String title,
      String description,
      @JsonKey(name: 'completed_at') DateTime dateCompleted}) = _$_TaskModel;

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$_TaskModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'completed_at')
  DateTime get dateCompleted;
  @override
  @JsonKey(ignore: true)
  _$TaskModelCopyWith<_TaskModel> get copyWith;
}
